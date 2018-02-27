# -*- coding:utf-8 -*-

from enum import Enum


class PixelFormat(Enum):
    RGB = 0
    GRAY_SCALE = 1
    LUT = 2

    def __int__(self):
        return self.value
