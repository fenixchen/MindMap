# -*- coding:utf-8 -*-

from log import Log
from osdobject import *
import struct

logger = Log.get_logger("engine")


class Block(object):
    def __init__(self, window, id, ingredient, x, y):
        self._window = window
        self._id = id
        self._x = x
        self._y = y
        self._ingredient = ingredient

    @property
    def id(self):
        return self._id

    @property
    def full_id(self):
        return self.window.id + '.' + self._id

    @property
    def x(self):
        return self._x

    @x.setter
    def x(self, val):
        self._x = val

    @property
    def y(self):
        return self._y

    @y.setter
    def y(self, val):
        self._y = val

    @property
    def window(self):
        return self._window

    @property
    def start_y(self):
        return self._ingredient.start_y() + self._y

    def height(self, window):
        return self._ingredient.height(window)

    @property
    def ingredient(self):
        return self._ingredient


class Window(OSDObject):
    def __init__(self, scene, id, x, y, width, height, palette, blocks,
                 zorder=0, alpha=0xFF, visible=True):
        self._scene = scene
        self._id = id
        self._x = x
        self._y = y
        self._width = width
        self._height = height
        self._zorder = zorder
        self._visible = visible
        self._palette = scene.find_palette(palette)
        self._blocks = []
        for (block_id, id, left, top) in blocks:
            ingredient = self._scene.find_ingredient(id)
            if ingredient is not None:
                block = Block(self, block_id, ingredient, left, top)
                self._blocks.append(block)
            else:
                logger.warn('cannot find ingredient <%s>' % id)
        self._alpha = alpha

    @property
    def id(self):
        return self._id

    @property
    def zorder(self):
        return self._zorder

    @property
    def visible(self):
        return self._visible

    @property
    def alpha(self):
        return self._alpha

    @alpha.setter
    def alpha(self, alpha):
        self._alpha = alpha

    @property
    def x(self):
        return self._x

    @x.setter
    def x(self, x):
        self._x = x

    @property
    def y(self):
        return self._y

    @y.setter
    def y(self, y):
        self._y = y

    @property
    def width(self):
        return self._width

    @width.setter
    def width(self, width):
        self._width = width

    @property
    def height(self):
        return self._height

    @height.setter
    def height(self, height):
        self._height = height

    @property
    def palette(self):
        return self._palette

    def find_block(self, id):
        for block in self._blocks:
            if block.id == id:
                return block
        return None

    def draw_line(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_y = y - self._y

        window_line_buf = [0] * self._width
        for block in self._blocks:
            if block.start_y <= window_y < block.start_y + block.height(self):
                block.ingredient.draw_line(window_line_buf,
                                           self, window_y - block.y,
                                           block.x)
        return WindowLineBuf(self, self._x, window_line_buf)

    def __str__(self):
        ret = "%s(%s, (%d, %d), %d x %d, zorder:%d)\n" % \
              (type(self), self._id, self._x, self._y, self._width, self._height, self._zorder)
        for block in self._blocks:
            ret += "\t%s @(%d, %d)\n" % (block.ingredient.id, block.x, block.y)
        return ret.rstrip('\n')

    def type(self):
        return OSDObjectType.WINDOW

    def to_binary(self):
        """
        struct block_binary {
            u32 ingredient_id;
            u16 x;
            u16 y
        };

        struct window_binary {
            u16 x;
            u16 y;

            u16 width;
            u16 height;

            u32 palette_id;

            u8 z_order;
            u8 visible;
            u8 alpha;
            u8 block_count;

            block_binary blocks[block_count];
        }
        """
        bins  = struct.pack('<HH', self._x, self._y)
        bins += struct.pack('<HH', self._width, self._height)
        bins += struct.pack('<I', self._palette.object_id)
        bins += struct.pack('<BBBB', self._zorder,
                            1 if self._visible else 0,
                            self._alpha,
                            len(self._blocks))

        for block in self._blocks:
            bins += struct.pack('<I', block.ingredient.object_id)
            bins += struct.pack('<HH', block.x, block.y)
        return bins


class WindowLineBuf(object):
    """
    窗口对应的一行buffer数据
    """

    def __init__(self, window, start_x, buffer):
        self._window = window
        self._start_x = start_x
        self._buffer = buffer

    @property
    def window(self):
        return self._window

    @property
    def start_x(self):
        return self._start_x

    @property
    def buffer(self):
        return self._buffer
