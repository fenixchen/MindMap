# -*- coding:utf-8 -*-
import app
from bitmap import *
from enumerate import *
from plot import *
from window import *

logger = Log.get_logger("engine")


class Modifier(object):
    __metaclass = abc.ABCMeta

    """
    窗口属性改变工具,用于制作动画
    """

    @abc.abstractmethod
    def execute(self, window):
        raise Exception("must be implemented by child")

    def __init__(self, scene, id, interval, windows, blocks, active):
        self._scene = scene
        self._id = id
        self._interval = interval
        self._windows = []
        self._blocks = []
        self._active = active
        if windows is not None:
            for window in windows:
                obj = scene.find_window(window)
                if obj is not None:
                    self._windows.append(obj)
                else:
                    raise Exception('cannot find window <%s>' % window)
        if blocks is not None:
            for block in blocks:
                obj = scene.find_block(block)
                if obj is not None:
                    self._blocks.append(obj)
                else:
                    raise Exception('cannot find block <%s>' % block)

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
        for block in self._blocks:
            self.execute(block)

    def __str__(self):
        ret = 'id:%s, interval:%d, active:%d' % (self._id, self._interval, self.active)
        return ret


class Move(Modifier):
    def __init__(self, scene, id, interval, step, limit, direction,
                 windows=None, blocks=None, active=True):

        super().__init__(scene, id, interval, windows, blocks, active)

        self._direction = MoveDirection[direction]
        self._step = step
        self._limit = limit

    def execute(self, target):
        if isinstance(target, Window):
            window = target
            if self._direction == MoveDirection.NORTH:
                if window.y - self._step > 0:
                    window.y = window.y - self._step
            elif self._direction == MoveDirection.SOUTH:
                if window.y() + window.height() + self._step < app.HEIGHT:
                    window.y = window.y + self._step
            elif self._direction == MoveDirection.WEST:
                window.x = window.x - self._step
            elif self._direction == MoveDirection.EAST:
                window.x = window.x + self._step
            else:
                raise Exception("Unknown direction")
        else:
            raise Exception("Unhandled type <%s>" % type(target))

    def __str__(self):
        ret = 'Move(' + Modifier.__str__(self)
        ret += ", step:%d, limit:%d, direction:%s)" % (self._step, self._limit, self._direction)
        return ret


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
