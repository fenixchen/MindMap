# -*- coding:utf-8 -*-

from enum import Enum


class PixelFormat(Enum):
    RGB = 0
    GRAY_SCALE = 1
    LUT = 2

    def __int__(self):
        return self.value


class GradientMode(Enum):
    NONE = 0
    LEFT_TO_RIGHT = 1
    TOP_TO_BOTTOM = 2
    TOP_LEFT_TO_BOTTOM_RIGHT = 3
    BOTTOM_LEFT_TO_TOP_RIGHT = 4

    def __int__(self):
        return self.value
