# -*- coding:utf-8 -*-

import os
import shutil
import hexdump
import yaml
import struct

from log import Log
from imageutil import ImageUtil
from font import Font
from rectangle import Rectangle
from palette import Palette
from line import Line
from window import Window
from bitmap import Bitmap
from glyph import Glyph
from modifier import *
from osdobject import OSDObjectType, OSDObject

logger = Log.get_logger("engine")


class Scene(object):
    _BASE_DIR = None

    def __init__(self, yaml_file=None):
        self._yaml_file = None
        self._windows = []
        self._ingredients = {}
        self._palettes = {}
        self._modifiers = []
        self._width = -1
        self._height = -1
        self._frames = 1
        self._ticks = 20
        self.load(yaml_file)

    @property
    def filename(self):
        return self._yaml_file

    @property
    def width(self):
        return self._width

    @property
    def height(self):
        return self._height

    @property
    def frames(self):
        return self._frames

    @property
    def ticks(self):
        return self._ticks

    def find_palette(self, id):
        if id in self._palettes:
            return self._palettes[id]
        else:
            logger.warn('cannot find palette <%s>' % id)
            return None

    def find_ingredient(self, id):
        if id in self._ingredients:
            return self._ingredients[id]
        else:
            logger.warn('cannot find ingredient <%s>' % id)
            return None

    def find_window(self, id):
        for window in self._windows:
            if window.id == id:
                return window
        logger.warn('cannot find window <%s>' % id)
        return None

    def find_block(self, id):
        block = None
        ids = id.split('.')
        if len(ids) == 2:
            window = self.find_window(ids[0])
            if window is not None:
                block = window.find_block(ids[1])
        if block is None:
            logger.warn('cannot find block <%s>' % id)
        return block

    def load(self, yaml_file):
        if not os.path.isfile(yaml_file) or not os.access(yaml_file, os.R_OK):
            raise Exception('%s does not exist or cannot read' % yaml_file)

        self._yaml_file = os.path.abspath(yaml_file).replace('\\', '/')
        logger.debug('Loading OSD yaml file: <%s>' % self._yaml_file)

        Scene._BASE_DIR = os.path.dirname(self._yaml_file) + '/'

        logger.debug('BASE_DIR: <%s>' % Scene._BASE_DIR)

        ImageUtil.BASE_DIR = Scene._BASE_DIR
        Font.BASE_DIR = Scene._BASE_DIR

        self._yaml_file = yaml_file
        with open(self._yaml_file) as f:
            content = f.read()
            config = yaml.load(content)
        if config is None:
            raise Exception('cannot load yaml file %s' % self._yaml_file)

        config = config['OSD']
        assert (config is not None and
                config['width'] is not None and
                config['height'] is not None)
        self._width = config['width']
        self._height = config['height']
        self._frames = 1 if 'frames' not in config else int(config['frames'])

        logger.debug('Width:%d, Height:%d' % (self._width, self._height))

        for item in config['Palettes']:
            obj = self._create_object(item)
            self._palettes[obj.id] = obj

        for item in config['Ingredients']:
            obj = self._create_object(item)
            self._ingredients[obj.id] = obj

        for item in config['Windows']:
            obj = self._create_object(item)
            self._windows.append(obj)
        self.sort_windows()

        if 'Modifiers' in config:
            for item in config['Modifiers']:
                obj = self._create_object(item)
                self._modifiers.append(obj)

    def sort_windows(self):
        self._windows.sort(key=lambda window: window.zorder, reverse=False)

    def _create_object(self, item):
        assert (len(item.keys()) > 0)
        cls_name = list(item.keys())[0]
        values = item[cls_name]
        logger.debug('Construct Class \'%s\' by %s' % (cls_name, values))
        if cls_name not in globals():
            raise Exception('Undefined class <%s>' % cls_name)
        cls = globals()[cls_name]
        obj = cls(scene=self, **values)
        logger.debug(obj)
        return obj

    def modify(self):
        for modifier in self._modifiers:
            if modifier.active:
                modifier.run()

    def paint_line(self, y, line_buffer, painter):
        str_color = '{'
        for pixel in line_buffer:
            str_color = str_color + (" #%06x" % pixel)
        str_color = str_color + '}'
        painter.set_pixel(0, y, str_color)

    def merge_line(self, dst_buf, src_buf, src_buf_offset, src_alpha):
        """
        blending源buffer到目的buffer中
        """
        assert (src_buf_offset + len(src_buf) < self._width)
        for x in range(src_buf_offset, src_buf_offset + len(src_buf)):
            dst_buf[x] = ImageUtil.blend_pixel(dst_buf[x], src_buf[x - src_buf_offset], src_alpha)

    def _merge_line_buffers(self, window_line_buffers, width):
        line_buffer = [0] * width
        for window_line_buf in window_line_buffers:
            self.merge_line(line_buffer,
                            window_line_buf.buffer,
                            window_line_buf.start_x,
                            window_line_buf.window.alpha)

        return line_buffer

    def draw(self, painter):
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._windows:
                if not window.visible:
                    continue
                if window.y <= y < window.y + window.height:
                    window_line_buffers.append(window.draw_line(y))
            line_buffer = self._merge_line_buffers(window_line_buffers, self._width)
            self.paint_line(y, line_buffer, painter)

    def __str__(self):
        str = 'Scene(%d x %d, %s)\n' % (self._width, self._height, self._yaml_file)
        str += 'Palettes[%d]\n' % len(self._palettes)
        for palette in self._palettes:
            str += '\t%s\n' % palette
        str += 'Ingredients[%d]\n' % len(self._ingredients)
        for ingredient in self._ingredients:
            str += '\t%s\n' % ingredient
        return str

    def generate_binary(self, target_folder=None):
        """
        struct object_binary{
            u16 object_type;
            u16 object_index;
            u32 object_size;
            u8 object_data[object_size];
        }
        """
        assert self._yaml_file is not None
        if target_folder is None:
            path = os.path.splitext(self._yaml_file)
            target_folder = path[0] + '.generated'
        logger.debug('Target folder:%s' % target_folder)
        if os.path.exists(target_folder):
            shutil.rmtree(target_folder, ignore_errors=True)
        os.mkdir(target_folder)

        file_offset = 0
        global_data = []
        object_index = 0

        bin_filename = target_folder + "/osd.bin"
        bin_file = open(bin_filename, "wb+")
        objects_list = (self._palettes, self._ingredients, self._windows, self._modifiers)
        for objects in objects_list:
            items = objects if isinstance(objects, list) else objects.values()
            for item in items:
                item.object_id = OSDObject.make_object_id(item.type(), object_index)
                bins = item.to_binary()
                if len(bins) % 4 != 0:
                    raise Exception('binary length of <%s> should 4 bytes align: %d' % (item.id, len(bins)))
                gen_bytes = struct.pack('<II', item.object_id, len(bins))
                gen_bytes += bins
                global_data.append(dict(
                    object_id=item.object_id,
                    id=item.id,
                    offset=file_offset,
                    size=len(gen_bytes)))
                bin_file.write(gen_bytes)
                logger.debug('To_binary object<%s> id<0x%x> type<%s> '
                             'bytes<0x%x> offset<0x%x>' % (
                                 item.id, item.object_id, item.type().name,
                                 len(gen_bytes), file_offset))
                logger.debug('\n' + hexdump.hexdump(gen_bytes, result='return'))
                file_offset += len(gen_bytes)
        logger.debug('To_binary, TOTAL LENGTH <0x%x>', file_offset)
        with open(target_folder + '/global.yaml', 'w') as meta_file:
            yaml.dump(global_data,
                      meta_file,
                      default_flow_style=False,
                      indent=4)
        bin_file.close()

        with open(bin_filename, 'rb') as f:
            logger.debug('\n' + hexdump.hexdump(f.read(), result='return'))
