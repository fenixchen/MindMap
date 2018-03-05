# -*- coding:utf-8 -*-

import struct

from enumerate import *
from log import Log
from osdobject import OSDObject, OSDObjectType
from imageutil import ImageUtil

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

    @property
    def entry_bits(self):
        lut_len = len(self._lut)
        b = 1
        while (1 << b) < lut_len:
            b += 1
        return b

    def __str__(self):
        return "%s(id: %s, %s, size:%d)" % \
               (type(self), self._id, self._pixel_format, len(self._lut))

    def to_binary(self):
        """
        struct rgb {
            u8 r, g, b;
        }
        struct data {
            u8 pixel_format;
            u8 entry_bits;
            u16 lut_entry_count;
            rgb lut[lut_entry_count]
        };
        :return: binary
        """
        bins = struct.pack('<BBH', self._pixel_format.value,
                           self.entry_bits, len(self._lut))
        for i in range(len(self._lut)):
            r, g, b = ImageUtil.rgb(self._lut[i])
            bins += struct.pack('<BBB', r, g, b)
        while len(bins) % 4 != 0:
            bins += b'\x00'
        return bins
