# -*- coding:utf-8 -*-

from enum import Enum
from log import Log
from font import Font
from window import *
from bitmap import Bitmap

logger = Log.get_logger("engine")

FONT = Font()


class OSDEngine(object):
    def __init__(self, width, height, frame_count, binary_filename=None):
        self._windows = []
        self._sketches = []
        self._ingredient = []
        self._palettes = []
        self._width = width
        self._height = height
        self._frame_count = frame_count
        self._binary_filename = binary_filename
        self._frame = Frame(self)
        if binary_filename is not None:
            self.load_from_file(self._binary_filename)
        self.fill_test_data()

    def load_from_file(self, filename):
        pass

    def fill_test_data(self):

        # 调色板初始化
        gray_scale_data = []
        for i in range(255, -1, -1):
            gray = (i << 16) | (i << 8) | i
            gray_scale_data.append(gray)
        gray_scale_data[255] = gray_scale_data[254]
        palette1 = Palette("调色板1", PixelFormat.LUT_8_BIT, gray_scale_data)
        self._palettes.append(palette1)

        palette2 = Palette("调色板2", PixelFormat.LUT_8_BIT, [0xFFFF00] * 256)
        self._palettes.append(palette2)

        # 图片初始化
        pic1 = Bitmap("图片1", 200, 50, palette2, [0x01] * 10000)
        self._ingredient.append(pic1)

        left, top, font_bitmap = FONT.load_char('S', 100)
        pic2 = Bitmap("文字1", font_bitmap.width, font_bitmap.rows, palette1, font_bitmap.buffer)
        self._ingredient.append(pic2)

        # 窗口初始化
        window1 = Window("窗口1", 100, 100, 100, 100)
        window1.add_ingredient(pic1, 10, 10)
        self._windows.append(window1)

        window2 = Window("窗口2", 400, 200, 100, 100)
        window2.add_ingredient(pic2, 20, 20)
        self._windows.append(window2)

        self.dump()

    def width(self):
        return self._width

    def height(self):
        return self._height

    def windows(self):
        return self._windows

    def palettes(self):
        return self._palettes

    def frame_count(self):
        return self._frame_count

    def dump(self):
        logger.debug("宽度: %d, 高度: %d, 帧数: %d, 数据文件: %s" %
                     (self.width(), self.height(), self._frame_count, self._binary_filename))
        logger.debug("调色板[%d] = {" % len(self._palettes))
        for palette in self._palettes:
            palette.dump()
        logger.debug("}")
        logger.debug("图片[%d] = {" % (len(self._ingredient)))
        for pic in self._ingredient:
            pic.dump()
            logger.debug("}")
        logger.debug("窗口[%d] = {" % len(self._windows))
        for window in self._windows:
            window.dump()
        logger.debug("}")

    def draw(self, frame_index, painter):
        self._frame.draw(frame_index, painter)


class PixelFormat(Enum):
    LUT_1_BIT = 1
    LUT_2_BIT = 4
    LUT_4_BIT = 16
    LUT_8_BIT = 256

    def __int__(self):
        return self.value

    def bit_count(self):
        bit_count = (1, 2, 4, 8)
        return bit_count[self.value]


class Palette(object):
    def __init__(self, name, pixel_format, lut):
        assert (isinstance(pixel_format, PixelFormat))
        assert (len(lut) == int(pixel_format))
        self._pixel_format = pixel_format
        self._lut = lut
        self._name = name

    def name(self):
        return self._name

    def color(self, index):
        assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
        return self._lut[index]

    def dump(self):
        logger.debug("  name: %s, %s, size:%d" % (self._name, self._pixel_format, len(self._lut)))


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


class Modifier(object):
    """
    窗口属性改变工具,用于制作动画
    """

    def __init__(self):
        pass


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
        for window in self._osd.windows():
            window.apply_modifier(frame_index)
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._osd.windows():
                if window.y() <= y < window.y() + window.height():
                    window_line_buffers.append(window.draw_line(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
            self.draw_line(y, line_buffer, painter)
