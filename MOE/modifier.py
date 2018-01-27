# -*- coding:utf-8 -*-
import abc
from enumerate import *
from log import Log

logger = Log.get_logger("engine")


class Modifier(object):
    """
    窗口属性改变工具,用于制作动画
    """

    @abc.abstractmethod
    def execute(self, window):
        raise Exception("must be implemented by child")

    def __init__(self, name):
        self._windows = set()
        self._name = name

    def name(self):
        return self._name

    def link(self, window):
        self._windows.add(window)

    def unlink(self, window):
        self._windows.remove(window)

    def action(self):
        for window in self._windows:
            self.execute(window)

    def dump(self):
        for window in self._windows:
            logger.debug("         => %s" % window.name())


class Mover(Modifier):
    def __init__(self, name, direction, step=1):
        super().__init__(name)
        assert (isinstance(direction, MoveDirection))
        self._direction = direction
        self._step = step

    def execute(self, window):
        if self._direction == MoveDirection.NORTH:
            window.set_y(window.y() - self._step)
        elif self._direction == MoveDirection.SOUTH:
            window.set_y(window.y() + self._step)
        elif self._direction == MoveDirection.WEST:
            window.x(window.x() - self._step)
        elif self._direction == MoveDirection.EAST:
            window.x(window.x() + self._step)
        else:
            raise Exception("Unknown direction")

    def dump(self):
        logger.debug("    name: %s, direction:%s, step: %d" %
                     (self._name, self._direction, self._step))
        super().dump()
