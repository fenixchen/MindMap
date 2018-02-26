# -*- coding:utf-8 -*-

import abc

from ingredient import Ingredient
import math


class Plot(Ingredient):
    def __init__(self, scene, id, palette):
        super().__init__(scene, id, palette)

    def color(self, window, color_index):
        if self._palette is None:
            return window.palette().color(color_index)
        else:
            return self._palette.color(color_index)

    def palette_name(self):
        if self._palette is None:
            return "<Parent>"
        else:
            return self._palette.id

    @abc.abstractmethod
    def plot_line(self, window_line_buf, window, y, block_x):
        raise Exception("must implement by child")

    def draw_line(self, window_line_buf, window, y, block_x):
        self.plot_line(window_line_buf, window, y, block_x)


class Rectangle(Plot):
    def __init__(self, scene, id, width, height, border_color=0,
                 border_weight=1, bgcolor=None, palette=None):
        super().__init__(scene, id, palette)
        self._width = width
        self._height = height
        if width == "parent":
            self._width = -1
        else:
            self._width = width
        if height == "parent":
            self._height = -1
        else:
            self._height = height
        self._border_color = border_color
        self._border_weight = border_weight
        self._bgcolor = bgcolor

    def plot_line(self, window_line_buf, window, y, block_x):
        border_color = self.color(window, self._border_color)
        if y < self._border_weight or y >= window.height - self._border_weight:
            for x in range(block_x, block_x + window.width):
                window_line_buf[x] = border_color
        else:
            for x in range(block_x, block_x + self._border_weight):
                window_line_buf[x] = border_color
            if not self._bgcolor is None:
                bg_color = self.color(window, self._bgcolor)
                for x in range(block_x + self._border_weight, window.width - self._border_weight):
                    window_line_buf[x] = bg_color
            for x in range(window.width - self._border_weight, window.width):
                window_line_buf[x] = border_color

    def height(self, window):
        if self._height == -1:
            return window.height
        else:
            return self._height

    def __str__(self):
        return "%s(id:%s, (%d x %d), border(color:%#x,weight:%d), bgcolor:%#x, palette:%s)" % \
               (type(self), self._id, self._width, self._height,
                self._border_color,
                self._border_weight,
                -1 if self._bgcolor is None else self._bgcolor,
                self._palette)


class Circle(Plot):
    def __init__(self, name, color, weight, center_x, center_y, radius, palette=None, bgcolor=None):
        super().__init__(name, palette)
        self._color = color
        self._weight = weight
        self._center_x, self._center_y = center_x, center_y
        self._radius = radius
        self._bgcolor = bgcolor

    def height(self, window):
        return self._radius * 2

    def plot_line(self, window_line_buf, window, y, block_x):
        rx = int((self._radius * self._radius - (self._radius - y) * (self._radius - y)) ** 0.5)
        if not self._bgcolor is None:
            for x in range(self._center_x - rx, self._center_x + rx):
                window_line_buf[x] = self.color(window, self._bgcolor)
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
        x_delta = self._x1 - self._x2
        y_delta = self._y1 - self._y2
        self._x1 = self._x2 + int(cos_val * x_delta - sin_val * y_delta + 0.5)
        self._y1 = self._y2 + int(sin_val * x_delta + cos_val * y_delta + 0.5)

    def plot_line(self, window_line_buf, window, y, block_x):
        if self._y2 != self._y1:
            slope = (self._x2 - self._x1) / (self._y2 - self._y1)
            px = self._x1 + int(slope * (y - self._y1) + 0.5)
            window_line_buf[px] = self.color(window, self._color)
        else:
            if y == self._y1:
                for x in range(block_x + self._x1, block_x + self._x2):
                    window_line_buf[x] = self.color(window, self._color)
