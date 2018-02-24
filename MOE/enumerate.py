# -*- coding:utf-8 -*-

from enum import Enum


class PixelFormat(Enum):
    RGB = 0
    LUT = 1

    def __int__(self):
        return self.value

class MoveDirection(Enum):
    NORTH = 0
    SOUTH = 1
    WEST = 2
    EAST = 3

    def __int__(self):
        return self.value
