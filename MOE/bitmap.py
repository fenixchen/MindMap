# -*- coding:utf-8 -*-


from ingredient import Ingredient
from log import Log

logger = Log.get_logger("engine")


class Bitmap(Ingredient):
    """
    位图对象
    """

    def __init__(self, name, width, height, data, palette, count = 1):
        super().__init__(name)
        assert (len(data) == width * height * count)
        self._width = width
        self._height = height
        self._data = data
        self._palette = palette
        self._count = count
        self._current = 0

    def width(self):
        return self._width

    def height(self, window):
        return self._height

    def draw_line(self, line_buf, window, y, block_x):
        assert (0 <= y < self._height)
        width = min(self._width, window.width() - block_x)
        start = self._current * self._width * self._height + self._width * y
        for x in range(start, start + width):
            index = self._data[x]
            line_buf[block_x + x - start] = self._palette.color(index)

    def slide(self):
        self._current = (self._current + 1) % self._count

    def dump(self):
        logger.debug("    name: %s, palette: %s, %d x %d, len(data): %d" %
                     (self._name, self._palette.name(), self._width, self._height, len(self._data)))
