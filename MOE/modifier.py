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
    __metaclass = abc.ABCMeta

    """
    窗口属性改变工具,用于制作动画
    """

    @abc.abstractmethod
    def execute(self, window):
        raise Exception("must be implemented by child")

    def __init__(self, scene, id, interval, step, limit, windows, ingredients, active):
        self._scene = scene
        self._id = id
        self._interval = interval
        self._step = step
        self._limit = limit
        self._windows = []
        self._ingredients = []
        self._active = active
                

    @property
    def active(self):
        return self._active

    @active.setter
    def set_active(self, active):
        self._active = active

    @property
    def id(self):
        return self._id

    def run(self):
        for window in self._windows:
            self.execute(window)
        for ingredient in self._ingredients:
            self.execute(ingredient)


class Move(Modifier):
    def __init__(self, scene, id, interval, step, limit, direction,
                 windows=None, ingredients=None, active=True):
        super().__init__(scene, id, interval, step, limit, windows, ingredients, active)

        self._direction = MoveDirection[direction]
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
