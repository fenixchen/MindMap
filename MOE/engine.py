# -*- coding:utf-8 -*-


# local import
from window import *
from bitmap import *
from plot import *
from modifier import *
from glyph import *
from palette import *
from imageutil import *

logger = Log.get_logger("engine")


class OSDEngine(object):
    def __init__(self, width, height, frame_count):
        self._windows = []
        self._ingredients = []
        self._glyphs = []
        self._palettes = []
        self._width = width
        self._height = height
        self._frame_count = frame_count
        self._modifiers = []
        self._frame = Frame(self)

    def width(self):
        return self._width

    def height(self):
        return self._height

    def windows(self):
        return self._windows

    def palettes(self):
        return self._palettes

    def modifiers(self):
        return self._modifiers

    def frame_count(self):
        return self._frame_count

    def dump(self):
        logger.debug("宽度: %d, 高度: %d, 帧数: %d" % (self.width(), self.height(), self._frame_count))

        logger.debug("调色板[%d] = {" % len(self._palettes))
        for palette in self._palettes:
            palette.dump()
        logger.debug("}")

        logger.debug("素材[%d] = {" % (len(self._ingredients)))
        for pic in self._ingredients:
            pic.dump()
        logger.debug("}")

        logger.debug("窗口[%d] = {" % len(self._windows))
        for window in self._windows:
            window.dump()
        logger.debug("}")

        logger.debug("修改器[%d] = {" % len(self._modifiers))
        for modifier in self._modifiers:
            modifier.dump()
        logger.debug("}")

    def draw(self, frame_index, painter):
        self._frame.draw(frame_index, painter)


class LineBuf(object):
    """
    整行buffer数据
    """

    def __init__(self, wlbufs, width):
        self._width = width
        self._lineBuf = [0] * width
        for wlbuf in wlbufs:
            self.merge_line(self._lineBuf, wlbuf.buffer(), wlbuf.start_x())

    def merge_line(self, dst_buf, src_buf, src_buf_offset):
        """
        blending源buffer到目的buffer中
        """
        assert (src_buf_offset + len(src_buf) < self._width)
        for x in range(src_buf_offset, src_buf_offset + len(src_buf)):
            # TODO 考虑Blending的模式
            dst_buf[x] = self.blend_pixel(dst_buf[x], src_buf[x - src_buf_offset])

    @staticmethod
    def blend_pixel(dst, src):
        dst = src
        return dst

    def buffer(self):
        return self._lineBuf


class Frame(object):
    def __init__(self, osd):
        self._osd = osd
        self._width = osd.width()
        self._height = osd.height()
        self._frame_index = 0

    @staticmethod
    def draw_line(y, line_buffer, painter):
        for x, pixel in enumerate(line_buffer.buffer()):
            if pixel != 0:
                color = "#%06x" % pixel
                painter.set_pixel(x, y, color)

    def draw(self, frame_index, painter):
        self._frame_index = frame_index
        if frame_index != 0:
            for modifier in self._osd.modifiers():
                modifier.action()
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._osd.windows():
                if window.y() <= y < window.y() + window.height():
                    window_line_buffers.append(window.draw_line(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
            self.draw_line(y, line_buffer, painter)
