# -*- coding:utf-8 -*-

import abc

from ingredient import Ingridient


class Border(Ingridient):

    def __init__(self, name, color, width):
        self._color = color
        self._width = width
        self._name = name

    def name(self):
        return self._name

    def draw_line(self, window, y, ingredient_x):
        color = window.palette().color(self._color)
        if y < self._width or y >= window.height() - self._width:
            return [color] * window.width()
        else:
            return [color] * self._width +[0] * (window.width() - self._width * 2) + [color] * self._width

    def height(self, window):
        return window.height()
