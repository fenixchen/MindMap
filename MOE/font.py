# -*- coding: UTF-8 -*-

# pip.exe install freetype-py
# copy freetype.dll to current folder

import freetype


class Font(object):
    def __init__(self):
        self._face = freetype.Face("Vera.ttf")

    def load_char(self, ch, width=48):
        self._face.set_char_size(width * 64)
        self._face.load_char(ch)
        return self._face.glyph.bitmap_left, self._face.glyph.bitmap_top, self._face.glyph.bitmap


if __name__ == '__main__':
    font = Font()
    top, left, bitmap = font.load_char('S')
    print("rows:%d, width:%d, pitch:%d" % (bitmap.rows, bitmap.width, bitmap.pitch))
    for y in range(bitmap.rows):
        for x in range(bitmap.width):
            pos = bitmap.pitch * y + x
            print("%02x " % bitmap.draw_line[pos], end='')
        print()
