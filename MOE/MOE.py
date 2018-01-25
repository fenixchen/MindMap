# -*- coding:utf-8 -*-
import logging
from enum import Enum
from tkinter import *  # 导入 Tkinter 库
logging.basicConfig(level=logging.DEBUG, format="%(levelname)s - %(message)s")


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
        logging.info("  name: %s, %s, size:%d" % (self._name, self._pixel_format, len(self._lut)))


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

    def get_buf(self, y):
        assert (0 <= y < self._height)
        pic_data = []
        for x in range(self._width * y, self._width * (y + 1)):
            index = self._data[x]
            pic_data.append(self._palette.get_pixel(index))
        return pic_data

    def dump(self):
        logging.info("  name: %s, palette: %s, %d x %d, size: %d" %
                     (self._name, self._palette.name(), self._width, self._height, len(self._data)))


class OSDData(object):
    """
    包含所有OSD数据
    """

    def __init__(self, width, height, binary_filename):
        self._windows = []
        self._canvas = []
        self._pics = []
        self._palette = []
        self._width = width
        self._height = height
        self.load_from_file(binary_filename)

    def load_from_file(self, filename):
        self.fill_test_data()

    def fill_test_data(self):
        palette1 = Palette("调色板1", PixelFormat.LUT_8_BIT, [0xAAFF0000] * 256)
        self._palette.append(palette1)
        pic1 = Picture("图片1", 20, 20, palette1, [0x01] * 400)
        self._pics.append(pic1)
        window1 = Window("窗口1", 100, 100, 50, 50)
        window1.add_pic(pic1, 10, 10)
        self._windows.append(window1)

    def width(self):
        return self._width

    def height(self):
        return self._height

    def windows(self):
        return self._windows

    def dump_data(self):
        logging.info("调色板[%d] = {" % len(self._palette))
        for palette in self._palette:
            palette.dump()
        logging.info("}")
        logging.info("图片[%d] = {" % (len(self._pics)))
        for pic in self._pics:
            pic.dump()
        logging.info("}")
        logging.info("窗口[%d] = {" % len(self._windows))
        for window in self._windows:
            window.dump()
        logging.info("}")

    def draw(self):
        for frame_no in range(FRAME_COUNT):
            frame = Frame(osd_data)
            frame.draw(frame_no)


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
        self._pics = []

    def get_line_buf(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_line_buf = []
        for (pic_x, pic_y, pic) in self._pics:
            if pic_y <= y < pic_y + pic.height():
                # 如果当前行不够长,扩展数组到picture左边点位置
                if len(window_line_buf) < pic_x:
                    window_line_buf.append([0] * (pic_x - len(window_line_buf)))
                window_line_buf[pic_x:] = pic.get_buf(y - pic_y)
        return WindowLineBuf(self._x, window_line_buf)

    def apply_modifier(self, f):
        # logging.debug("(%s)应用修改" % self._name)
        pass

    def add_pic(self, pic, pic_x, pic_y):
        assert (isinstance(pic, Picture))
        self._pics.append((pic_x, pic_y, pic))

    def dump(self):
        logging.info("  name: %s, (%d, %d), %d x %d" % (self._name, self._x, self._y, self._width, self._height))
        for (pic_x, pic_y, pic) in self._pics:
            logging.info("    %s @(%d, %d)" % (pic.name(), pic_x, pic_y))


class Frame(object):
    def __init__(self, osd):
        self._osd = osd
        self._width = osd.width()
        self._height = osd.height()

    def draw_line(self, y, line_buffer):
        # Draw buffer
        pass

    def draw(self, f):
        logging.debug("画第%d帧" % f)
        for window in self._osd.windows():
            window.apply_modifier(f)
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._osd.windows():
                window_line_buffers.append(window.get_line_buf(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
            self.draw_line(y, line_buffer)


WIDTH = 640
HEIGHT = 480
FRAME_COUNT = 1
OSD_BIN = "osd.bin"


def initGUI():
    window = Tk()
    canvas = Canvas(window, width=WIDTH, height=HEIGHT, bg="#000000")
    canvas.pack()
    img = PhotoImage(width=WIDTH, height=HEIGHT)
    canvas.create_image((WIDTH / 2, HEIGHT / 2), image=img, state="normal")
    canvas.img = img
    return img

if __name__ == '__main__':
    logging.debug("宽度: %d, 高度: %d, 帧数: %d, 数据文件: %s" % (WIDTH, HEIGHT, FRAME_COUNT, OSD_BIN))
    initGUI()
    osd_data = OSDData(WIDTH, HEIGHT, "osd.bin")
    osd_data.dump_data()
    osd_data.draw()
