# -*- coding:utf-8 -*-


from font import Font
from imageutil import ImageUtil
from ingredient import Ingredient
from log import Log
from osdobject import OSDObjectType
import struct

FONT = Font()

logger = Log.get_logger("engine")


class Glyph(Ingredient):

    def __init__(self, scene, id, font_width, char, height=-1, palette=None, color=None):
        super().__init__(scene, id, palette)
        self._bitmap_left, self._bitmap_top, bitmap = FONT.load_char(char, font_width)
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
        color = self.color(window, self._color)
        width = min(self._width, window.width - block_x)
        for x in range(self._pitch * y, self._pitch * y + width):
            index = self._data[x]
            if index == 0:
                continue
            col = block_x + x - self._width * y
            line_buf[col] = ImageUtil.blend_pixel(line_buf[col], color, index / 255)

    def __str__(self):
        ret = "id: %s, %d x %d, size: %d" % (self._id, self._width, self._height, len(self._data))
        return ret

    def type(self):
        return OSDObjectType.GLYPH

    def to_binary(self):
        """
        struct glyph_binary{
            u8 bitmap_left;
            u8 bitmap_top;
            u8 bitmap_width;
            u8 bitmap_height;

            u8 pitch;
            u8 font_width;
            u16 char;

            u32 palette_id;

            u8 color;
            u8 reserved[3];
        }
        """
        bins = struct.pack('<BBBB', self._bitmap_left, self._bitmap_top,
                           self._width, self._height)
        bins += struct.pack('<BBH', self._pitch, self._font_width, ord(self._char))
        bins += struct.pack('<I', 0 if self._palette is None else self._palette.object_id)
        bins += struct.pack('<Bxxx', self._color)
        return bins
