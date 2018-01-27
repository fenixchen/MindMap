# -*- coding:utf-8 -*-

import abc

class Ingredient(object):

    def __init__(self, name, palette=None):
        self._name = name
        self._palette = palette

    def name(self):
        return self._name

    def palette_name(self):
        if self._palette is None:
            return "<Parent>"
        else:
            return self._palette.name()

    def color(self, window, color_index):
        if self._palette is None:
            return window.palette().color(color_index)
        else:
            return self._palette.color(color_index)

    @abc.abstractmethod
    def height(self, window=None):
        raise Exception("must implemented by child")

    @abc.abstractmethod
    def draw_line(self, line_buf, window, y, ingredient_x):
        """
        在窗口中绘图
        :param window:窗口
        :param y:自己的第几行
        :param ingredient_x: 当前绘图单元在window中的x位置
        """
        raise Exception("must implemented by child")
