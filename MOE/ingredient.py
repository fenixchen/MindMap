# -*- coding:utf-8 -*-

import abc


class Ingridient(object):
    @abc.abstractmethod
    def name(self):
        raise Exception("must implemented by child")

    @abc.abstractmethod
    def height(self):
        raise Exception("must implemented by child")

    @abc.abstractmethod
    def draw_line(self, window, y, ingredient_x):
        """
        在窗口中绘图
        :param window:窗口
        :param y:自己的第几行
        :param ingredient_x: 当前绘图单元在window中的x位置
        :return:绘图结果数组
        """
        raise Exception("must implemented by child")
