# -*- coding:utf-8 -*-

import abc

from ingredient import Ingredient
import math


class Plot(Ingredient):
    def __init__(self, name, palette=None):
        super().__init__(name)
        self._palette = palette

    def color(self, window, color_index):
        if self._palette is None:
            return window.palette().color(color_index)
        else:
            return self._palette.color(color_index)

    def palette_name(self):
        if self._palette is None:
            return "<Parent>"
        else:
            return self._palette.name()

    @abc.abstractmethod
    def plot_line(self, window_line_buf, window, y, block_x):
        raise Exception("must implement by child")

    def draw_line(self, window_line_buf, window, y, block_x):
        self.plot_line(window_line_buf, window, y, block_x)


class Rectangle(Plot):

    def __init__(self, name, color, weight, palette=None):
        super().__init__(name, palette)
        self._color = color
        self._weight = weight
        self._name = name

    def plot_line(self, window_line_buf, window, y, block_x):
        color = window.palette().color(self._color)
        if y < self._weight or y >= window.height() - self._weight:
            for x in range(block_x, block_x + window.width()):
                window_line_buf[x] = color
        else:
            for x in range(block_x, block_x + self._weight):
                window_line_buf[x] = color
            for x in range(window.width() - self._weight, window.width()):
                window_line_buf[x] = color

    def height(self, window):
        return window.height()


class Circle(Plot):
    def __init__(self, name, color, weight, center_x, center_y, radius, palette=None):
        super().__init__(name, palette)
        self._color = color
        self._weight = weight
        self._center_x, self._center_y = center_x, center_y
        self._radius = radius

    def height(self, window):
        return self._radius * 2

    def plot_line(self, window_line_buf, window, y, block_x):
        rx = int((self._radius * self._radius - (self._radius - y) * (self._radius - y)) ** 0.5)
        window_line_buf[self._center_x + rx] = self.color(window, self._color)
        window_line_buf[self._center_x - rx] = self.color(window, self._color)


class Line(Plot):
    def __init__(self, name, color, weight, x1, y1, x2, y2, palette=None):
        super().__init__(name, palette)
        self._color = color
        self._weight = weight
        self._x1, self._y1, self._x2, self._y2 = x1, y1, x2, y2

    def height(self, window):
        if self._y2 > self._y1:
            return self._y2 - self._y1 + 1
        else:
            return self._y1 - self._y2 + 1

    def start_y(self):
        return min(self._y1, self._y2)

    def rotate(self, angle):
        cos_val = math.cos(angle / 180)
        sin_val = math.sin(angle / 180)
        xdelta = self._x1 - self._x2
        ydelta = self._y1 - self._y2
        self._x1 = self._x2 + int(cos_val * xdelta - sin_val * ydelta + 0.5)
        self._y1 = self._y2 + int(sin_val * xdelta + cos_val * ydelta + 0.5)

    def plot_line(self, window_line_buf, window, y, block_x):
        if self._y2 != self._y1:
            slope = (self._x2 - self._x1) / (self._y2 - self._y1)
            px = self._x1 + int(slope * (y - self._y1)  + 0.5)
            window_line_buf[px] = self.color(window, self._color)
        else:
            if y == self._y1:
                for x in range(block_x + self._x1, block_x + self._x2):
                    window_line_buf[x] = self.color(window, self._color)
