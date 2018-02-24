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
    def __init__(self, *scenes):
        self._root = Tk()
        self._root.title(TITLE_STRING)
        self._canvas = Canvas(self._root, width=WIDTH, height=HEIGHT, bg="#FFFFFF")
        self._canvas.bind('<Button-1>', self.mouse_click)
        self._canvas.bind('<Button-3>', self.mouse_click)
        self._canvas.pack()
        self._image_on_canvas = None

        self._frame_index = 0
        self._scenes = scenes
        self._scene_index = 0

    def mouse_click(self, event):
        if event.num == 1:
            self._scene_index = (self._scene_index + 1) % len(self._scenes)
        elif event.num == 3:
            self._scene_index = (self._scene_index - 1 + len(self._scenes)) % len(self._scenes)

    def change_scene(self, scene_index):
        return self._scenes[scene_index]

    def run(self):
        scene = self.change_scene(self._scene_index)

        image = PhotoImage(width=scene.width, height=scene.height)

        painter = Painter(image)

        self._root.title(TITLE_STRING + "[%d/%d]" % (self._frame_index, FRAME_COUNT - 1))

        scene.draw(self._frame_index, painter)

        if self._image_on_canvas is None:
            self._image_on_canvas = self._canvas.create_image(0, 0, anchor=NW, image=image)
        else:
            self._canvas.itemconfig(self._image_on_canvas, image=image)

        self._canvas.img = image
        self._frame_index = self._frame_index + 1

        if self._frame_index < FRAME_COUNT:
            self._canvas.after(TICK, self.run)

        mainloop()
