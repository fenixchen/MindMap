# -*- coding:utf-8 -*-

from enum import Enum
from log import Log
from font import Font

logger = Log.get_logger("MOE")

FONT = Font()


class OSDEngine(object):
    def __init__(self, width, height, frame_count, binary_filename):
        self._windows = []
        self._canvas = []
        self._pictures = []
        self._palettes = []
        self._width = width
        self._height = height
        self._frame_count = frame_count
        self._binary_filename = binary_filename
        self.load_from_file(self._binary_filename)
        self._frame = Frame(self)

    def load_from_file(self, filename):
        self.fill_test_data()

    def fill_test_data(self):
        palette1 = Palette("调色板1", PixelFormat.LUT_8_BIT, [0xFFFF00] * 256)
        self._palettes.append(palette1)
        pic1 = Picture("图片1", 200, 200, palette1, [0x01] * 40000)
        self._pictures.append(pic1)
        window1 = Window("窗口1", 100, 100, 100, 100)
        window1.add_picture(pic1, 0, 0)
        self._windows.append(window1)

        gray_scale_data = []
        for i in range(255, -1, -1):
            gray = (i << 16) | (i << 8) | i
            gray_scale_data.append(gray)
        gray_scale_data[255] = gray_scale_data[254]
        palette2 = Palette("调色板2", PixelFormat.LUT_8_BIT, gray_scale_data)
        self._palettes.append(palette2)

        left, top, bitmap = FONT.load_char('S', 100)
        pic2 = Picture("文字1", bitmap.width, bitmap.rows, palette2, bitmap.buffer)
        self._pictures.append(pic2)

        window2 = Window("窗口2", 200, 200, 100, 100)
        window2.add_picture(pic2, 20, 20)
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
        logger.debug("图片[%d] = {" % (len(self._pictures)))
        for pic in self._pictures:
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

    def get_pixel(self, index):
        assert index < len(self._lut), "{} should < {}".format(index, len(self._lut))
        return self._lut[index]

    def dump(self):
        logger.debug("  name: %s, %s, size:%d" % (self._name, self._pixel_format, len(self._lut)))


class Picture(object):
    """
    一个Picture对象, 可能是字体或者普通图片
    """

    def __init__(self, name, width, height, palette, data):
        assert (len(data) == width * height)
        self._width = width
        self._height = height
        self._name = name
        self._data = data
        self._palette = palette

    def name(self):
        return self._name

    def width(self):
        return self._width

    def height(self):
        return self._height

    def get_buf(self, y, width):
        assert (0 <= y < self._height)
        pic_data = []
        for x in range(self._width * y, self._width * y + width):
            index = self._data[x]
            pic_data.append(self._palette.get_pixel(index))
        return pic_data

    def dump(self):
        logger.debug("  name: %s, palette: %s, %d x %d, size: %d" %
                     (self._name, self._palette.name(), self._width, self._height, len(self._data)))


class WindowLineBuf(object):
    """
    窗口对应的一行buffer数据
    """

    def __init__(self, start_x, buffer):
        self._start_x = start_x
        self._buffer = buffer

    def start_x(self):
        return self._start_x

    def buffer(self):
        return self._buffer


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


class WindowModifier(object):
    """
    窗口属性改变工具,用于制作动画
    """

    def __init__(self):
        pass


class Window(object):
    def __init__(self, name, x, y, width, height):
        self._x = x
        self._y = y
        self._name = name
        self._width = width
        self._height = height
        self._pictures = []

    def x(self):
        return self._x

    def y(self):
        return self._y

    def width(self):
        return self._width

    def height(self):
        return self._height

    def get_line_buf(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_line_buf = []
        for (pic_x, pic_y, pic) in self._pictures:
            pic_x = pic_x + self._x
            pic_y = pic_y + self._y
            if pic_y <= y < pic_y + pic.height():
                # 如果当前行不够长,扩展数组到picture左边点位置
                if len(window_line_buf) < pic_x:
                    window_line_buf = window_line_buf + [0] * (pic_x - len(window_line_buf))
                window_line_buf[pic_x:] = pic.get_buf(y - pic_y,
                                                      min(pic.width(), self._x + self._width - pic_x))
        return WindowLineBuf(self._x, window_line_buf)

    def apply_modifier(self, f):
        # logger.debug("(%s)应用修改" % self._name)
        pass

    def add_picture(self, pic, pic_x, pic_y):
        assert (isinstance(pic, Picture))
        self._pictures.append((pic_x, pic_y, pic))

    def dump(self):
        logger.debug("  name: %s, (%d, %d), %d x %d" %
                     (self._name, self._x, self._y, self._width, self._height))
        for (pic_x, pic_y, pic) in self._pictures:
            logger.debug("    %s @(%d, %d)" % (pic.name(), pic_x, pic_y))


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
                    window_line_buffers.append(window.get_line_buf(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
            self.draw_line(y, line_buffer, painter)
