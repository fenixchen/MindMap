# -*- coding:utf-8 -*-

from enum import Enum


class PixelFormat(Enum):
    RGB = 0
    LUT_1_BIT = 1
    LUT_2_BIT = 4
    LUT_4_BIT = 16
    LUT_8_BIT = 256

    def __int__(self):
        return self.value

    def bit_count(self):
        bit_count = (1, 2, 4, 8)
        return bit_count[self.value]


class MoveDirection(Enum):
    NORTH = 0
    SOUTH = 1
    WEST = 2
    EAST = 3

    def __int__(self):
        return self.value
