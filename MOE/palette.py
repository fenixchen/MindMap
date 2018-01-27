# -*- coding:utf-8 -*-

from enumerate import *
from log import Log

logger = Log.get_logger("engine")


class Palette(object):
    def __init__(self, name, pixel_format, lut):
        assert (isinstance(pixel_format, PixelFormat))
        self._pixel_format = pixel_format
        self._lut = lut
        self._name = name

    def name(self):
        return self._name

    def color(self, index):
        if self._pixel_format == PixelFormat.RGB:
            return index
        else:
            assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
            return self._lut[index]

    def dump(self):
        logger.debug("    name: %s, %s, size:%d" % (self._name, self._pixel_format, len(self._lut)))
