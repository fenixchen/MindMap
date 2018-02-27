# -*- coding:utf-8 -*-

import os

import yaml

from app import *
from engine import *
from font import Font

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
        self.load(yaml_file)

    @property
    def width(self):
        return self._width

    @property
    def height(self):
        return self._height

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
        for x, pixel in enumerate(line_buffer.buffer()):
            str_color = str_color + (" #%06x" % pixel)
        str_color = str_color + '}'
        painter.set_pixel(0, y, str_color)

    def draw(self, painter):
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._windows:
                if not window.visible:
                    continue
                if window.y <= y < window.y + window.height:
                    window_line_buffers.append(window.draw_line(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
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

