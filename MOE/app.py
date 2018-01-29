# -*- coding: UTF-8 -*-

from tkinter import *
from engine import *

"""
Refresh after Tick
"""
TICK = 10
WIDTH = 640
HEIGHT = 480
FRAME_COUNT = 256

logger = Log.get_logger("app")


def fill_test_data(osd):
    # 调色板初始化
    palette0 = Palette("调色板0", PixelFormat.RGB, [])
    osd.palettes().append(palette0)

    gray_scale_data = []
    for i in range(255, -1, -1):
        gray = (i << 16) | (i << 8) | i
        gray_scale_data.append(gray)
    gray_scale_data[255] = gray_scale_data[254]
    palette1 = Palette("调色板1", PixelFormat.LUT_8_BIT, gray_scale_data)
    osd.palettes().append(palette1)

    palette2 = Palette("调色板2", PixelFormat.LUT_8_BIT, [0xFFFF00] * 256)
    osd.palettes().append(palette2)

    # 图片初始化
    image_data = []
    w = 0
    h = 0
    for i in range(1, 7):
        w, h, data = ImageUtil.load("jpg\%d.bmp" % i)
        image_data.extend(data)
    pic1 = Bitmap("图片1", w, h, image_data, palette0, 6)
    osd.ingredients().append(pic1)

    w, h, data = ImageUtil.load("bird.bmp")
    pic2 = Bitmap("图片2", w, h, data, palette0)
    osd.ingredients().append(pic2)

    # 字符初始化
    glyph1 = Glyph('字符O', 48, 'O')
    osd.ingredients().append(glyph1)

    glyph2 = Glyph('字符S', 64, 'S')
    osd.ingredients().append(glyph2)

    glyph3 = Glyph('字符D', 72, 'D')
    osd.ingredients().append(glyph3)

    glyph4 = Glyph('字符D', 32, 'D')
    osd.ingredients().append(glyph1)

    glyph5 = Glyph('字符E', 32, 'E')
    osd.ingredients().append(glyph2)

    glyph6 = Glyph('字符M', 32, 'M')
    osd.ingredients().append(glyph3)

    glyph7 = Glyph('字符O', 32, 'O')
    osd.ingredients().append(glyph3)

    # 窗口初始化
    window1 = Window("窗口1", 20, 20, 100, 100, palette0)
    block_ani = window1.add_block(pic1, 0, 0)
    osd.windows().append(window1)

    window2 = Window("窗口2", 200, 200, 200, 200, palette1)
    window2.add_block(glyph1, 20, 20)
    window2.add_block(glyph2, 80, 20)
    window2.add_block(glyph3, 140, 20)
    window2.add_block(glyph4, 10, 100)
    window2.add_block(glyph5, 60, 100)
    window2.add_block(glyph6, 110, 100)
    window2.add_block(glyph7, 160, 100)
    window2.add_block(Rectangle("边框", 254, 5), pos_x=0, pos_y=0)
    osd.windows().append(window2)

    window3 = Window("窗口3", 420, 200, 0, 200, palette0)
    window3.add_block(pic2, 0, 0)
    osd.windows().append(window3)

    window4 = Window("窗口4", 50, 300, 150, 150, palette0)
    window4.add_block(Circle("圆形1", color=100, weight=1, center_x=70, center_y=70, radius=65), pos_x=0, pos_y=0)
    block1 = window4.add_block(Line("针", color=200, weight=1, x1=0, y1=70, x2=70, y2=70), 0, 0)
    osd.windows().append(window4)

    # Modifier 初始化
    move = Move("移动1", MoveDirection.NORTH, 5)
    move.link(window2)
    osd.modifiers().append(move)

    resize = Resize("大小1", 5)
    resize.link(window3)
    osd.modifiers().append(resize)

    rotate = Rotate("旋转1", 45)
    rotate.link(block1)
    osd.modifiers().append(rotate)

    slide = Slide("图片更换")
    slide.link(block_ani)
    osd.modifiers().append(slide)

    osd.dump()


class Painter(object):
    def __init__(self, image):
        self._image = image

    def set_image(self, image):
        self._image = image

    def set_pixel(self, x, y, color):
        self._image.put(color, (x, y))


TITLE_STRING = "Monitor OSD Engine Demo"


class App(object):
    def __init__(self):
        self._osd = OSDEngine(WIDTH, HEIGHT, FRAME_COUNT)
        fill_test_data(self._osd)
        self._root = Tk()
        self._root.title(TITLE_STRING)
        self._canvas = Canvas(self._root, width=WIDTH, height=HEIGHT, bg="#FFFFFF")
        self._canvas.pack()
        self._image_on_canvas = None
        self._frame_index = 0

    def run(self):
        image = PhotoImage(width=self._osd.width(), height=self._osd.height())
        painter = Painter(image)
        # logger.debug("Draw [%d / %d]" % (self._frame_index, self._osd.frame_count() - 1))
        self._root.title(TITLE_STRING + "[%d/%d]" % (self._frame_index, self._osd.frame_count() - 1))
        self._osd.draw(self._frame_index, painter)
        if self._image_on_canvas is None:
            self._image_on_canvas = self._canvas.create_image(0, 0, anchor=NW, image=image)
        else:
            self._canvas.itemconfig(self._image_on_canvas, image=image)
        self._canvas.img = image
        self._frame_index = self._frame_index + 1
        if self._frame_index < self._osd.frame_count():
            self._canvas.after(TICK, self.run)


if __name__ == '__main__':
    App().run()
    mainloop()
