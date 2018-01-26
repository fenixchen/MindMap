# -*- coding:utf-8 -*-


from log import Log

logger = Log.get_logger("engine")


class Window(object):
    def __init__(self, name, x, y, width, height):
        self._name = name
        self._x = x
        self._y = y
        self._width = width
        self._height = height
        self._ingredients = []
        self._sketches = []

    def x(self):
        return self._x

    def y(self):
        return self._y

    def width(self):
        return self._width

    def height(self):
        return self._height

    def draw_line(self, y):
        """
        计算window的像素行
        :param y: 行数
        :return: Window 行数据对象
        """
        window_y = y - self._y

        window_line_buf = [0] * self._width
        for (x, y, ingredient) in self._ingredients:
            if x <= window_y < y + ingredient.height():
                window_line_buf[x:] = ingredient.draw_line(self, window_y - y, x)
        return WindowLineBuf(self._x, window_line_buf)

    def apply_modifier(self, f):
        # logger.debug("(%s)应用修改" % self._name)
        pass

    def add_ingredient(self, pic, pic_x, pic_y):
        self._ingredients.append((pic_x, pic_y, pic))

    def dump(self):
        logger.debug("  name: %s, (%d, %d), %d x %d" %
                     (self._name, self._x, self._y, self._width, self._height))
        for (x, y, ingredient) in self._ingredients:
            logger.debug("    %s @(%d, %d)" % (ingredient.name(), x, y))


class WindowLineBuf(object):
    """
    窗口对应的一行buffer数据
    """

    def __init__(self, start_x, buffer):
        self._start_x = start_x
        self._buffer = buffer

    def start_x(self):
        return self._start_x

    def buffer(self):
        return self._buffer