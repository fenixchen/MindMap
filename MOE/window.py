# -*- coding:utf-8 -*-

from log import Log

logger = Log.get_logger("engine")


class Block(object):
    def __init__(self, ingredient, x, y):
        self._x = x
        self._y = y
        self._ingredient = ingredient

    @property
    def x(self):
        return self._x

    @property
    def y(self):
        return self._y

    @property
    def start_y(self):
        return self._ingredient.start_y() + self._x

    def height(self, window):
        return self._ingredient.height(window)

    @property
    def ingredient(self):
        return self._ingredient

    @property
    def id(self):
        return self._ingredient.id


class Window(object):
    def __init__(self, scene, id, x, y, width, height, palette, blocks,
                 alpha=1.0):
        self._scene = scene
        self._id = id
        self._x = x
        self._y = y
        self._width = width
        self._height = height
        self._palette = scene.find_palette(palette)
        self._blocks = []
        for (id, left, top) in blocks:
            ingredient = self._scene.find_ingredient(id)
            if ingredient is not None:
                block = Block(ingredient, left, top)
                self._blocks.append(block)
            else:
                logger.warn('cannot find ingredient <%s>' % id)
        self._enabled = True
        self._alpha = alpha

    @property
    def id(self):
        return self._id

    @property
    def alpha(self):
        return self._alpha

    @alpha.setter
    def set_alpha(self, alpha):
        self._alpha = alpha

    @property
    def enabled(self):
        return self._enabled

    @enabled.setter
    def set_enabled(self, enabled):
        self._enabled = enabled

    @property
    def x(self):
        return self._x

    @x.setter
    def set_x(self, x):
        self._x = x

    @property
    def y(self):
        return self._y

    @y.setter
    def set_y(self, y):
        self._y = y

    @property
    def width(self):
        return self._width

    @width.setter
    def set_width(self, width):
        self._width = width

    @property
    def height(self):
        return self._height

    @height.setter
    def set_height(self, height):
        self._height = height

    @property
    def palette(self):
        return self._palette

    def draw_line(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_y = y - self._x

        window_line_buf = [0] * self._width
        for block in self._blocks:
            if block.start_y <= window_y < block.start_y + block.height(self):
                block.ingredient.draw_line(window_line_buf,
                                           self, window_y - block.y,
                                           block.x)
        return WindowLineBuf(self, self._x, window_line_buf)

    def add_block(self, ingredient, pos_x, pos_y):
        block = Block(pos_x, pos_y, ingredient)
        self._blocks.append(block)
        return block

    def __str__(self):
        ret = "Window(%s, (%d, %d), %d x %d\n" % \
              (self._id, self._x, self._y, self._width, self._height)
        for block in self._blocks:
            ret += "\t%s @(%d, %d)\n" % (block.ingredient.id, block.x, block.y)
        return ret


class WindowLineBuf(object):
    """
    窗口对应的一行buffer数据
    """

    def __init__(self, window, start_x, buffer):
        self._window = window
        self._start_x = start_x
        self._buffer = buffer

    def window(self):
        return self._window

    def start_x(self):
        return self._start_x

    def buffer(self):
        return self._buffer
