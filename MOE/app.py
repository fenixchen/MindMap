# -*- coding: UTF-8 -*-

from log import Log
from tkinter import *
from engine import *

"""
Refresh after Tick
"""
TICK = 100
WIDTH = 640
HEIGHT = 480
FRAME_COUNT = 100
OSD_BIN = "osd.bin"

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
        self._osd = OSDEngine(WIDTH, HEIGHT, FRAME_COUNT, "osd.bin")
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
