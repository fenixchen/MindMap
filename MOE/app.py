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
        self._root = Tk()
        self._root.title(TITLE_STRING)
        self._canvas = Canvas(self._root, width=WIDTH, height=HEIGHT, bg="#FFFFFF")
        self._canvas.bind('<Button-1>', self.mouse_click)
        self._canvas.bind('<Button-3>', self.mouse_click)
        self._canvas.pack()
        self._image_on_canvas = None
        self._frame_index = 0
        self._scene = 0
        self._scene_count = 5

        self._window_text = None
        self._window_pic = None
        self._window_ani = None
        self._window_clock = None

        self._move = None
        self._resize = None
        self._rotate = None
        self._slide = None

        self._init_osd()

    def mouse_click(self, event):
        if event.num == 1:
            self._scene = (self._scene + 1) % self._scene_count
        elif event.num == 3:
            self._scene = (self._scene - 1 + self._scene_count) % self._scene_count

    def _init_osd(self):
        # 调色板初始化
        palette0 = Palette("调色板0", PixelFormat.RGB, [])
        self._osd.palettes().append(palette0)

        gray_scale_data = []
        for i in range(255, -1, -1):
            gray = (i << 16) | (i << 8) | i
            gray_scale_data.append(gray)
        gray_scale_data[255] = gray_scale_data[254]
        palette1 = Palette("调色板1", PixelFormat.LUT_8_BIT, gray_scale_data)
        self._osd.palettes().append(palette1)

        palette2 = Palette("调色板2", PixelFormat.LUT_8_BIT, [0xFFFF00] * 256)
        self._osd.palettes().append(palette2)

        # 图片初始化
        image_data = []
        w = 0
        h = 0
        for i in range(1, 7):
            w, h, data = ImageUtil.load("jpg\%d.bmp" % i)
            image_data.extend(data)
        pic1 = Bitmap("图片1", w, h, image_data, palette0, 6)
        self._osd.ingredients().append(pic1)

        w, h, data = ImageUtil.load("bird.bmp")
        pic2 = Bitmap("图片2", w, h, data, palette0)
        self._osd.ingredients().append(pic2)

        # 字符初始化
        glyph1 = Glyph('字符O', 48, 'O')
        self._osd.ingredients().append(glyph1)

        glyph2 = Glyph('字符S', 64, 'S')
        self._osd.ingredients().append(glyph2)

        glyph3 = Glyph('字符D', 72, 'D')
        self._osd.ingredients().append(glyph3)

        glyph4 = Glyph('字符D', 32, 'D')
        self._osd.ingredients().append(glyph1)

        glyph5 = Glyph('字符E', 32, 'E')
        self._osd.ingredients().append(glyph2)

        glyph6 = Glyph('字符M', 32, 'M')
        self._osd.ingredients().append(glyph3)

        glyph7 = Glyph('字符O', 32, 'O')
        self._osd.ingredients().append(glyph3)

        # 窗口初始化
        self._window_ani = Window("窗口1", 20, 20, 100, 100, palette0)
        block_ani = self._window_ani.add_block(pic1, 0, 0)
        self._osd.windows().append(self._window_ani)

        self._window_bg = Window("背景", 200, 0, 300, 480, palette0, alpha=1)
        self._window_bg.add_block(Rectangle("边框", 0xFFFF00, 1, bgcolor=0x002222), pos_x=0, pos_y=0)
        self._osd.windows().append(self._window_bg)

        self._window_text = Window("窗口2", 200, 200, 200, 200, palette1, alpha=1)
        self._window_text.add_block(glyph1, 20, 20)
        self._window_text.add_block(glyph2, 80, 20)
        self._window_text.add_block(glyph3, 140, 20)
        self._window_text.add_block(glyph4, 10, 100)
        self._window_text.add_block(glyph5, 60, 100)
        self._window_text.add_block(glyph6, 110, 100)
        self._window_text.add_block(glyph7, 160, 100)
        self._window_text.add_block(Rectangle("边框", 254, 5), pos_x=0, pos_y=0)
        self._osd.windows().append(self._window_text)

        self._window_pic = Window("窗口3", 420, 200, 0, 200, palette0, alpha=0.5)
        self._window_pic.add_block(pic2, 0, 0)
        self._osd.windows().append(self._window_pic)

        self._window_clock = Window("窗口4", 50, 300, 150, 150, palette0)
        circle = Circle("圆形1", color=100, weight=1, center_x=70, center_y=70, radius=65, bgcolor=0xFF00FF)
        self._window_clock.add_block(circle, pos_x=0, pos_y=0)
        block1 = self._window_clock.add_block(Line("针", color=200, weight=1, x1=0, y1=70, x2=70, y2=70), 0, 0)
        self._osd.windows().append(self._window_clock)


        # Modifier 初始化
        self._move = Move("移动1", MoveDirection.NORTH, 5)
        self._move.link(self._window_text)
        self._osd.modifiers().append(self._move)

        self._resize = Resize("大小1", 5)
        self._resize.link(self._window_pic)
        self._osd.modifiers().append(self._resize)

        self._rotate = Rotate("旋转1", 45)
        self._rotate.link(block1)
        self._osd.modifiers().append(self._rotate)

        self._slide = Slide("图片更换")
        self._slide.link(block_ani)
        self._osd.modifiers().append(self._slide)

        self._osd.disable()

        self._osd.dump()

    def change_scene(self, scene):
        self._osd.disable()
        if scene == 0:
            self._window_text.enable()
            self._window_bg.enable()
            self._move.enable()
        elif scene == 1:
            self._window_ani.enable()
            self._slide.enable()
        elif scene == 2:
            self._window_pic.enable()
            self._resize.enable()
        elif scene == 3:
            self._window_clock.enable()
            self._rotate.enable()
        elif scene == 4:
            self._osd.enable()

    def run(self):
        image = PhotoImage(width=self._osd.width(), height=self._osd.height())
        painter = Painter(image)
        self._root.title(TITLE_STRING + "[%d/%d]" % (self._frame_index, self._osd.frame_count() - 1))
        self.change_scene(self._scene)
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
