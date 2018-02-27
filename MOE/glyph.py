# -*- coding:utf-8 -*-


from ingredient import Ingredient
from log import Log
from font import Font

FONT = Font()

logger = Log.get_logger("engine")


class Glyph(Ingredient):

    def __init__(self, scene, id, font_width, char, height=-1, palette=None, color=None):
        super().__init__(scene, id, palette)
        self._left, self._top, bitmap = FONT.load_char(char, font_width)
        self._height = bitmap.rows
        self._width = bitmap.width
        self._data = bitmap.buffer[:]
        self._pitch = bitmap.pitch
        self._char = char
        self._font_width = font_width
        self._color = color

    @property
    def char(self):
        return self._char

    @property
    def width(self):
        return self._width

    def height(self, window=None):
        return self._height

    def draw_line(self, line_buf, window, y, block_x):
        assert (0 <= y < self._height)
        width = min(self._width, window.width - block_x)
        for x in range(self._pitch * y, self._pitch * y + width):
            index = self._data[x]
            if index == 0:
                continue
            color = window._palette.color(index, self._color)
            line_buf[block_x + x - self._width * y] = color
        pass

    def __str__(self):
        ret = "id: %s, %d x %d, size: %d" % (self._id, self._width, self._height, len(self._data))
        return ret
