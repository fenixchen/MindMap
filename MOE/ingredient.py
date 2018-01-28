# -*- coding:utf-8 -*-

import abc

class Ingredient(object):

    def __init__(self, name):
        self._name = name

    def name(self):
        return self._name

    def start_y(self):
        """
        返回需要画的起始行
        :return:
        """
        return 0

    @abc.abstractmethod
    def height(self, window=None):
        raise Exception("must implemented by child")

    @abc.abstractmethod
    def draw_line(self, line_buf, window, y, block_x):
        """
        在窗口中绘图
        :param window:窗口
        :param y:自己的第几行
        :param block_x: 当前绘图单元在window中的x位置
        """
        raise Exception("must implemented by child")
