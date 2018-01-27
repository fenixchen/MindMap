# -*- coding:utf-8 -*-

import abc

from ingredient import Ingridient


class Rectangle(Ingridient):

    def __init__(self, name, border_color = 0, border_width = 0):
        self._border_color = border_color
        self._border_width = border_width
        self._name = name

    def name(self):
        return self._name

    def draw_line(self, line_buf, window, y, ingredient_x):
        color = window.palette().color(self._border_color)
        if y < self._border_width or y >= window.height() - self._border_width:
            for x in range(ingredient_x, ingredient_x + window.width()):
                line_buf[x] = color
        else:
            for x in range(ingredient_x, ingredient_x + self._border_width):
                line_buf[x] = color
            for x in range(window.width() - self._border_width, window.width()):
                line_buf[x] = color

    def height(self, window):
        return window.height()
