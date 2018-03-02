# -*- coding:utf-8 -*-

import abc
from enum import Enum

OBJECT_TYPE_BITS = 16
OBJECT_INDEX_BITS = 16


class OSDObjectType(Enum):
    WINDOW = 1
    PALETTE = 2
    BITMAP = 3
    GLYPH = 4
    RECTANGLE = 5
    LINE = 6
    MOVE = 7
    FLIP = 8


class OSDObject(metaclass=abc.ABCMeta):

    @abc.abstractmethod
    def type(self):
        pass

    @abc.abstractmethod
    def to_binary(self):
        pass

    @staticmethod
    def make_object_id(type, index):
        assert isinstance(type, OSDObjectType)
        assert type.value < (1 << OBJECT_TYPE_BITS)
        assert index < (1 << OBJECT_INDEX_BITS)
        return (type.value << OBJECT_INDEX_BITS) | index

    @staticmethod
    def split_object_id(object_id):
        mask = (1 << OBJECT_INDEX_BITS) - 1
        object_index = object_id & mask
        object_type = (object_id & ~mask) >> OBJECT_INDEX_BITS
        assert object_type < (1 << OBJECT_TYPE_BITS)
        assert object_index < (1 << OBJECT_INDEX_BITS)
        return object_type, object_index


if __name__ == '__main__':
    object_id = OSDObject.make_object_id(OSDObjectType.WINDOW, 10)
    print('object_id: %x' % object_id)
    type, index = OSDObject.split_object_id(object_id)
    print('type:%s(%d), index:%d' % (OSDObjectType(type).name, type, index))

    object_id = OSDObject.make_object_id(OSDObjectType.RECTANGLE, 0x12)
    print('object_id: %x' % object_id)
    type, index = OSDObject.split_object_id(object_id)
    print('type:%s(%d), index:%d' % (OSDObjectType(type).name, type, index))
