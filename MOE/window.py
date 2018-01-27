# -*- coding:utf-8 -*-

from log import Log

logger = Log.get_logger("engine")


class Window(object):
    def __init__(self, name, x, y, width, height, palette):
        self._name = name
        self._x = x
        self._y = y
        self._width = width
        self._height = height
        self._palette = palette
        self._ingredients = []

    def name(self):
        return self._name

    def x(self):
        return self._x

    def set_x(self, new_x):
        self._x = new_x

    def y(self):
        return self._y

    def set_y(self, new_y):
        self._y = new_y

    def width(self):
        return self._width

    def set_width(self, width):
        self._width = width

    def height(self):
        return self._height

    def set_height(self, height):
        self._height = height

    def palette(self):
        return self._palette

    def draw_line(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_y = y - self._y

        window_line_buf = [0] * self._width
        for (pos_x, pos_y, ingredient) in self._ingredients:
            if pos_y <= window_y < pos_y + ingredient.height(self):
                ingredient.draw_line(window_line_buf, self, window_y - pos_y, pos_x)
        return WindowLineBuf(self._x, window_line_buf)

    def add_ingredient(self, ingredient, pos_x, pos_y):
        self._ingredients.append((pos_x, pos_y, ingredient))

    def dump(self):
        logger.debug("    name: %s, (%d, %d), %d x %d" %
                     (self._name, self._x, self._y, self._width, self._height))
        for (x, y, ingredient) in self._ingredients:
            logger.debug("        %s @(%d, %d)" % (ingredient.name(), x, y))


class WindowLineBuf(object):
    """
    窗口对应的一行buffer数据
    """

    def __init__(self, start_x, buffer):
        self._start_x = start_x
        self._buffer = buffer

    def start_x(self):
        return self._start_x

    def buffer(self):
        return self._buffer
