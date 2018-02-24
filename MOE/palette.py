# -*- coding:utf-8 -*-

from enumerate import *
from log import Log

logger = Log.get_logger("engine")


class Palette(object):
    def __init__(self, id, colors):
        self._id = id
        if isinstance(colors, str):
            if colors == 'RGB24':
                self._pixel_format = PixelFormat.RGB
                self._lut = []
            elif colors == 'GRAYSCALE':
                self._pixel_format = PixelFormat.LUT
                self._lut = [(x, x, x) for x in range(256)]
        else:
            self._pixel_format = PixelFormat.LUT
            self._lut = colors

    @property
    def id(self):
        return self._id

    def get_color(self, index):
        if self._pixel_format == PixelFormat.RGB:
            return index
        else:
            assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
            return self._lut[index]

    def __str__(self):
        return "Palette(id: %s, %s, size:%d)" % (self._id, self._pixel_format, len(self._lut))
