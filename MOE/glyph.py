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

    def __init__(self, name, width, code):
        self._left, self._top, bitmap = FONT.load_char(code, width)
        self._height = bitmap.rows
        self._width = bitmap.width
        self._data = bitmap.buffer[:]
        self._pitch = bitmap.pitch
        self._name = name
        self._code = code

    def code(self):
        return self._code

    def name(self):
        return self._name

    def width(self):
        return self._width

    def height(self, window = None):
        return self._height

    def draw_line(self, line_buf, window, y, ingredient_x):
        assert (0 <= y < self._height)
        width = min(self._width, window.width() - ingredient_x)
        for x in range(self._pitch * y, self._pitch * y + width):
            index = self._data[x]
            line_buf[ingredient_x + x - self._width * y] = window._palette.color(index)

    def dump(self):
        logger.debug("    name: %s, %d x %d, size: %d" %
                     (self._name, self._width, self._height, len(self._data)))
