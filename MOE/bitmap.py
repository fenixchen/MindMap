# -*- coding:utf-8 -*-


from ingredient import Ingridient
from log import Log

logger = Log.get_logger("engine")


class Bitmap(Ingridient):
    """
    位图对象
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

    def height(self, window):
        return self._height

    def draw_line(self, line_buf, window, y, ingredient_x):
        assert (0 <= y < self._height)
        width = min(self._width, window.width() - ingredient_x)
        for x in range(self._width * y, self._width * y + width):
            index = self._data[x]
            line_buf[ingredient_x + x - self._width * y] = self._palette.color(index)

    def dump(self):
        logger.debug("  name: %s, palette: %s, %d x %d, size: %d" %
                     (self._name, self._palette.name(), self._width, self._height, len(self._data)))
