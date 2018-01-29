# -*- coding:utf-8 -*-
import abc
from enumerate import *
from window import *
from plot import *
import math
from bitmap import *
import app

logger = Log.get_logger("engine")


class Modifier(object):
    """
    窗口属性改变工具,用于制作动画
    """

    @abc.abstractmethod
    def execute(self, window):
        raise Exception("must be implemented by child")

    def __init__(self, name):
        self._targets = set()
        self._name = name
        self._enabled = True

    def enabled(self):
        return self._enabled

    def enable(self):
        self._enabled = True

    def disable(self):
        self._enabled = False

    def name(self):
        return self._name

    def link(self, target):
        self._targets.add(target)

    def unlink(self, target):
        self._targets.remove(target)

    def action(self):
        for target in self._targets:
            self.execute(target)

    def dump(self):
        for target in self._targets:
            logger.debug("         => %s" % target.name())


class Move(Modifier):
    def __init__(self, name, direction, step=1):
        super().__init__(name)
        assert (isinstance(direction, MoveDirection))
        self._direction = direction
        self._step = step

    def execute(self, target):
        if isinstance(target, Window):
            window = target
            if self._direction == MoveDirection.NORTH:
                if window.y() - self._step > 0:
                    window.set_y(window.y() - self._step)
                else:
                    self._direction = MoveDirection.SOUTH
                    self.execute(target)
            elif self._direction == MoveDirection.SOUTH:
                if window.y() + window.height() + self._step < app.HEIGHT:
                    window.set_y(window.y() + self._step)
                else:
                    self._direction = MoveDirection.NORTH
                    self.execute(target)
            elif self._direction == MoveDirection.WEST:
                window.x(window.x() - self._step)
            elif self._direction == MoveDirection.EAST:
                window.x(window.x() + self._step)
            else:
                raise Exception("Unknown direction")
        else:
            raise Exception("Unhandled type")

    def dump(self):
        logger.debug("    name: %s, direction:%s, step: %d" %
                     (self._name, self._direction, self._step))
        super().dump()


class Resize(Modifier):
    def __init__(self, name, step=1):
        super().__init__(name)
        self._step = step

    def execute(self, target):
        if isinstance(target, Window):
            window = target
            if window.width() + window.x() < app.WIDTH - self._step:
                window.set_width(window.width() + self._step)
        else:
            raise Exception("Unhandled type")

    def dump(self):
        logger.debug("    name: %s, step: %d" % (self._name, self._step))
        super().dump()


class Rotate(Modifier):
    def __init__(self, name, step_angle=15):
        super().__init__(name)
        self._step_angle = step_angle

    def execute(self, target):
        if isinstance(target, Block):
            if isinstance(target.ingredient(), Line):
                line = target.ingredient()
                line.rotate(self._step_angle)
        else:
            raise Exception("Unhandled type %s" % target.__class__.__name__)

    def dump(self):
        logger.debug("    name: %s, angle: %d" % (self._name, self._step_angle))
        super().dump()


class Slide(Modifier):
    def __init__(self, name):
        super().__init__(name)

    def execute(self, target):
        if isinstance(target, Block) and isinstance(target.ingredient(), Bitmap):
            bitmap = target.ingredient()
            bitmap.slide()
        else:
            raise Exception("Unhandled type %s" % target.__class__.__name__)
