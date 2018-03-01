# -*- coding:utf-8 -*-

from enum import Enum
import struct


class PixelFormat(Enum):
    RGB = 0
    LUT = 1

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


class LineStyle(Enum):
    SOLID = 0
    DASH = 1
    DOT1 = 2
    DOT2 = 3
    DOT3 = 4
    DASH_DOT = 5
    DASH_DOT_DOT = 6

    def __int__(self):
        return self.value


class OSDObjectType(Enum):
    WINDOW = 1
    PALETTE = 2
    BITMAP = 3
    GLYPH = 4
    RECTANGLE = 5
    LINE = 6
    MOVE = 7
    FLIP = 8

    def __int__(self):
        return self.value


OBJECT_TYPE_BITS = 16

OBJECT_INDEX_BITS = 16


def make_object_id(type, index):
    assert isinstance(type, OSDObjectType)
    assert type.value < (1 << OBJECT_TYPE_BITS)
    assert index < (1 << OBJECT_INDEX_BITS)
    return (type.value << OBJECT_INDEX_BITS) | index


def split_object_id(object_id):
    mask = (1 << OBJECT_INDEX_BITS) - 1
    object_index = object_id & mask
    object_type = (object_id & ~mask) >> OBJECT_INDEX_BITS
    assert object_type < (1 << OBJECT_TYPE_BITS)
    assert object_index < (1 << OBJECT_INDEX_BITS)
    return object_type, object_index


if __name__ == '__main__':
    object_id = make_object_id(OSDObjectType.WINDOW, 10)
    print('object_id: %x' % object_id)
    type, index = split_object_id(object_id)
    print('type:%s(%d), index:%d' % (OSDObjectType(type).name, type, index))

    object_id = make_object_id(OSDObjectType.RECTANGLE, 0x12)
    print('object_id: %x' % object_id)
    type, index = split_object_id(object_id)
    print('type:%s(%d), index:%d' % (OSDObjectType(type).name, type, index))
