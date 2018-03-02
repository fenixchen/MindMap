# -*- coding:utf-8 -*-

import struct

from enumerate import *
from log import Log
from osdobject import OSDObject, OSDObjectType

logger = Log.get_logger("engine")


class Palette(OSDObject):
    def __init__(self, scene, id, colors):
        self._id = id
        self._scene = scene
        self._lut = []
        if isinstance(colors, str):
            if colors == 'RGB24':
                self._pixel_format = PixelFormat.RGB
            else:
                raise Exception('Unknown colors %s' % colors)
        else:
            self._pixel_format = PixelFormat.LUT
            self._lut = colors

    def type(self):
        return OSDObjectType.PALETTE

    @property
    def id(self):
        return self._id

    def color(self, index, based_color=None):
        if self._pixel_format == PixelFormat.RGB:
            return index
        else:
            assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
            return self._lut[index]

    def __str__(self):
        return "%s(id: %s, %s, size:%d)" % \
               (type(self), self._id, self._pixel_format, len(self._lut))

    def to_binary(self):
        b = struct.pack('<HH', self._pixel_format.value, len(self._lut))
        b += struct.pack('%sI' % len(self._lut), *self._lut)
        return b
