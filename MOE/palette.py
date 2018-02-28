# -*- coding:utf-8 -*-

from enumerate import *
from log import Log

logger = Log.get_logger("engine")


class Palette(object):
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

    @property
    def id(self):
        return self._id

    def color(self, index, based_color = None):
        if self._pixel_format == PixelFormat.RGB:
            return index
        elif self._pixel_format == PixelFormat.GRAY_SCALE:
            if based_color == None:
                return (index << 16) | (index << 8) | index
            else:
                R = (based_color >> 16) & 0xFF
                G = (based_color >> 8) & 0xFF
                B = (based_color >> 0) & 0xFF
                R = int(R * index / 255)
                G = int(G * index / 255)
                B = int(B * index / 255)
                return (R << 16) | (G << 8) | B
        else:
            assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
            return self._lut[index]

    def __str__(self):
        return "%s(id: %s, %s, size:%d)" % \
               (type(self), self._id, self._pixel_format, len(self._lut))
