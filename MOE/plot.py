# -*- coding:utf-8 -*-

import abc

from enumerate import GradientMode
from ingredient import Ingredient


class Plot(Ingredient):
    def __init__(self, scene, id, palette):
        super().__init__(scene, id, palette)

    def color(self, window, color_index):
        if self._palette is None:
            return window.palette.color(color_index)
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
                 border_weight=0, bgcolor=None, gradient_mode=None, palette=None):
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
        self._border_weight = border_weight

        if self._border_weight != 0:
            if isinstance(border_color, int):
                self._border_color_top = border_color
                self._border_color_bottom = border_color
                self._border_color_left = border_color
                self._border_color_right = border_color
            elif isinstance(border_color, list):
                assert len(border_color) == 4
                self._border_color_top = border_color[0]
                self._border_color_bottom = border_color[1]
                self._border_color_left = border_color[2]
                self._border_color_right = border_color[3]
            else:
                raise Exception('Unknown border color value <%s>' % border_color)

        if gradient_mode is not None:
            self._gradient_mode = GradientMode[gradient_mode]
        else:
            self._gradient_mode = GradientMode.NONE

        if bgcolor is not None:
            if isinstance(bgcolor, int):
                self._bgcolor_start = bgcolor
                self._bgcolor_end = bgcolor
            elif isinstance(bgcolor, list):
                assert len(bgcolor) == 2
                self._bgcolor_start = bgcolor[0]
                self._bgcolor_end = bgcolor[1]
        else:
            self._bgcolor_start = None
            self._bgcolor_end = None

        if self._gradient_mode is not None:
            assert self._bgcolor_start is not None and self._bgcolor_end is not None

    def _plot_border(self, window_line_buf, window, y, block_x):

        width = window.width if self._width == -1 else self._width
        height = window.height if self._height == -1 else self._height

        if y < self._border_weight:
            # draw top border
            color = self.color(window, self._border_color_top)
            margin = self._border_weight - (self._border_weight - y)
            for x in range(block_x + margin, block_x + width - margin):
                window_line_buf[x] = color

            # draw left border  + top border
            color = self.color(window, self._border_color_left)
            for x in range(block_x, block_x + y):
                window_line_buf[x] = color

            # draw right border  + top border
            color = self.color(window, self._border_color_right)
            for x in range(block_x + width - y, block_x + width):
                window_line_buf[x] = color
            return True

        elif y >= window.height - self._border_weight:
            # draw bottom border
            color = self.color(window, self._border_color_bottom)
            margin = (window.height - y)
            for x in range(block_x + margin, block_x + width - margin):
                window_line_buf[x] = color

            # draw left border  + bottom border
            color = self.color(window, self._border_color_left)
            for x in range(block_x, block_x + height - y):
                window_line_buf[x] = color

            # draw right border  + bottom border
            color = self.color(window, self._border_color_right)
            for x in range(block_x + width - (height - y), block_x + width):
                window_line_buf[x] = color

            return True

        else:
            color = self.color(window, self._border_color_left)
            for x in range(block_x, block_x + self._border_weight):
                window_line_buf[x] = color

            color = self.color(window, self._border_color_right)
            for x in range(window.width - self._border_weight, window.width):
                window_line_buf[x] = color
            return False

    def _fill_rect(self, window_line_buf, window, y, block_x):
        width = window.width if self._width == -1 else self._width
        height = window.height if self._height == -1 else self._height

        bg_color_start = self.color(window, self._bgcolor_start)
        bg_color_end = self.color(window, self._bgcolor_end)

        x_color_delta = y_color_delta = 0

        x_steps = width - self._border_weight * 2
        R_delta = ((bg_color_end >> 16 & 0xFF) - (bg_color_start >> 16 & 0xFF)) / x_steps
        G_delta = ((bg_color_end >> 8 & 0xFF) - (bg_color_start >> 8 & 0xFF)) / x_steps
        B_delta = ((bg_color_end >> 0 & 0xFF) - (bg_color_start >> 0 & 0xFF)) / x_steps

        color = bg_color_start
        step = 0
        for x in range(block_x + self._border_weight, block_x + width - self._border_weight):
            color = (int((bg_color_start >> 16 & 0xFF) + R_delta * step) << 16) | \
                    (int((bg_color_start >> 8 & 0xFF) + G_delta * step) << 8) | \
                    (int((bg_color_start >> 0 & 0xFF) + B_delta * step) << 0)
            window_line_buf[x] = color
            step += 1

    def plot_line(self, window_line_buf, window, y, block_x):
        is_border = False
        if self._border_weight != 0:
            is_border = self._plot_border(window_line_buf, window, y, block_x)

        if not is_border and self._bgcolor_start != None:
            self._fill_rect(window_line_buf, window, y, block_x)

    def height(self, window):
        if self._height == -1:
            return window.height
        else:
            return self._height

    def __str__(self):
        return "%s(id:%s, (%d x %d)," \
               "border_color(top:%#x, bottom:%#x, left:%#x,right:%#x)," \
               "border_weight:%d, bgcolor:(%#x - %#x), palette:%s)" % (
                   type(self), self._id, self._width, self._height,
                   self._border_color_top, self._border_color_bottom,
                   self._border_color_left, self._border_color_right,
                   self._border_weight,
                   -1 if self._bgcolor_start is None else self._bgcolor_start,
                   -1 if self._bgcolor_end is None else self._bgcolor_end,
                   self._palette.id)


class Line(Plot):
    def __init__(self, scene, id, color, weight, x1, y1, x2, y2, palette=None):
        super().__init__(scene, id, palette)
        self._color = color
        self._weight = weight
        self._x1, self._y1, self._x2, self._y2 = x1, y1, x2, y2

    def height(self, window):
        if self._y2 > self._y1:
            return self._y2 - self._y1 + 1 + self._weight
        else:
            return self._y1 - self._y2 + 1 + self._weight

    def start_y(self):
        return min(self._y1, self._y2)

    def plot_line(self, window_line_buf, window, y, block_x):
        color = self.color(window, self._color)
        if self._y2 == self._y1:
            if self._y1 <= y < self._y1 + self._weight:
                for x in range(block_x + self._x1, block_x + self._x2):
                    window_line_buf[x] = color
        elif self._x1 == self._x2:
            for i in range(self._weight):
                window_line_buf[block_x + self._x1 + i] = color
        else:
            slope = (self._x2 - self._x1) / (self._y2 - self._y1)
            px = self._x1 + int(slope * (y - self._y1) + 0.5)
            window_line_buf[block_x + px] = color

    def __str__(self):
        return "%s(id:%s, (%d, %d) - (%d, %x), color:%#x, weight:%d, palette:%s)" % \
               (type(self), self._id, self._x1, self._y1, self._x2, self._y2,
                self._color,
                self._weight,
                self._palette)


'''
    def rotate(self, angle):
        cos_val = math.cos(angle / 180)
        sin_val = math.sin(angle / 180)
        x_delta = self._x1 - self._x2
        y_delta = self._y1 - self._y2
        self._x1 = self._x2 + int(cos_val * x_delta - sin_val * y_delta + 0.5)
        self._y1 = self._y2 + int(sin_val * x_delta + cos_val * y_delta + 0.5)

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

'''
