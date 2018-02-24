# -*- coding:utf-8 -*-


from ingredient import Ingredient
from log import Log
from imageutil import ImageUtil

logger = Log.get_logger("engine")


class Bitmap(Ingredient):
    """
    位图对象
    """

    def __init__(self, id, bitmaps, width=-1, height=-1, palette=None):
        super().__init__(id)
        self._data = []
        self._palette = palette
        if isinstance(bitmaps, str):
            bitmaps = [bitmaps]
        assert (isinstance(bitmaps, list))
        self._count = len(bitmaps)
        for bitmap in bitmaps:
            self._width, self._height, data = ImageUtil.load(bitmap)
            self._data.extend(data)
        self._current = 0
        assert (len(self._data) == self._width * self._height * self._count)

    def width(self):
        return self._width

    def height(self, window=None):
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

    def __str__(self):
        return "id: %s, palette: %s, %d x %d, count: %d, len(data): %d" % \
               (self._id, self._palette, self._width, self._height, self._count, len(self._data))
