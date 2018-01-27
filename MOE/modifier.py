# -*- coding:utf-8 -*-
import abc
from enumerate import *


class Modifier(object):
    """
    窗口属性改变工具,用于制作动画
    """

    @abc.abstractmethod
    def execute(self, window):
        raise Exception("must be implemented by child")

    def __init__(self):
        self._windows = set()

    def link(self, window):
        self._windows.add(window)

    def unlink(self, window):
        self._windows.remove(window)

    def action(self):
        for window in self._windows:
            self.execute(window)

class Mover(Modifier):
    def __init__(self, direction, step_per_frame=1):
        super().__init__()
        assert (isinstance(direction, MoveDirection))
        self._direction = direction
        self._step_per_frame = step_per_frame

    def execute(self, window):
        if self._direction == MoveDirection.NORTH:
            window.set_y(window.y() - 1)
        elif self._direction == MoveDirection.SOUTH:
            window.set_y(window.y() + 1)
        elif self._direction == MoveDirection.WEST:
            window.x(window.x() - 1)
        elif self._direction == MoveDirection.EAST:
            window.x(window.x() + 1)
        else:
            raise Exception("Unknown direction")