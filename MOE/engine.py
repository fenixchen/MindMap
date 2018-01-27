# -*- coding:utf-8 -*-


# local import
from window import *
from bitmap import *
from sketch import *
from modifier import *
from glyph import *
from palette import *
from imageutil import  *

logger = Log.get_logger("engine")

class OSDEngine(object):
    def __init__(self, width, height, frame_count, binary_filename=None):
        self._windows = []
        self._ingredients = []
        self._glyphs = []
        self._palettes = []
        self._width = width
        self._height = height
        self._frame_count = frame_count
        self._modifiers = []
        self._binary_filename = binary_filename
        self._frame = Frame(self)
        if binary_filename is not None:
            self.load_from_file(self._binary_filename)
        self.fill_test_data()

    def load_from_file(self, filename):
        pass

    def fill_test_data(self):

        # 调色板初始化
        palette0 = Palette("调色板0", PixelFormat.RGB, [])

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
        pic1 = Bitmap("图片1", 200, 50, [0x01] * 10000, palette2)
        self._ingredients.append(pic1)

        w, h, data = ImageUtil.load("bird.bmp")
        pic2 = Bitmap("图片2", w, h, data, palette0)
        self._ingredients.append(pic2)

        # 字符初始化
        glyph1 = Glyph('字符O', 48, 'O')
        self._ingredients.append(glyph1)

        glyph2 = Glyph('字符S', 64, 'S')
        self._ingredients.append(glyph2)

        glyph3 = Glyph('字符D', 72, 'D')
        self._ingredients.append(glyph3)

        # 窗口初始化
        window1 = Window("窗口1", 100, 100, 100, 100, palette1)
        window1.add_ingredient(pic1, 10, 10)
        self._windows.append(window1)

        window2 = Window("窗口2", 200, 200, 200, 200, palette1)
        window2.add_ingredient(glyph1, 20, 20)
        window2.add_ingredient(glyph2, 80, 20)
        window2.add_ingredient(glyph3, 140, 20)
        window2.add_ingredient(Rectangle(name="边框", border_color=254, border_width=5), pos_x=0, pos_y=0)
        self._windows.append(window2)

        window3 = Window("窗口3", 420, 200, 200, 200, palette0)
        window3.add_ingredient(pic2, 0, 0)
        self._windows.append(window3)

        # Modifier 初始化
        mover = Mover("移动1", MoveDirection.NORTH, 1)
        mover.link(window2)
        self._modifiers.append(mover)

        sizer = Sizer("大小1", 5)
        sizer.link(window3)
        self._modifiers.append(sizer)

        self.dump()

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
        logger.debug("宽度: %d, 高度: %d, 帧数: %d, 数据文件: %s" %
                     (self.width(), self.height(), self._frame_count, self._binary_filename))

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
        for modifier in self._osd.modifiers():
            modifier.action()
        for y in range(0, self._height):
            window_line_buffers = []
            for window in self._osd.windows():
                if window.y() <= y < window.y() + window.height():
                    window_line_buffers.append(window.draw_line(y))
            line_buffer = LineBuf(window_line_buffers, self._width)
            self.draw_line(y, line_buffer, painter)
