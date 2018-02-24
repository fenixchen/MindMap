# -*- coding:utf-8 -*-


from ingredient import Ingredient
from log import Log
from font import Font

FONT = Font()

logger = Log.get_logger("engine")


class Glyph(Ingredient):
    """
    字符位图
    """

    def __init__(self, id, width, char, height=-1):
        super().__init__(id)
        self._left, self._top, bitmap = FONT.load_char(char, width)
        self._height = bitmap.rows
        self._width = bitmap.width
        self._data = bitmap.buffer[:]
        self._pitch = bitmap.pitch
        self._char = char

    @property
    def char(self):
        return self._char

    def width(self):
        return self._width

    def height(self, window=None):
        return self._height

    def draw_line(self, line_buf, window, y, block_x):
        assert (0 <= y < self._height)
        width = min(self._width, window.width() - block_x)
        for x in range(self._pitch * y, self._pitch * y + width):
            index = self._data[x]
            line_buf[block_x + x - self._width * y] = window._palette.color(index)

    def __str__(self):
        return "id: %s, %d x %d, size: %d" % (self._id, self._width, self._height, len(self._data))
