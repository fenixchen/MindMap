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

    def __init__(self, scene, id, interval, limit, windows, blocks, active):
        self._scene = scene
        self._id = id
        self._interval = interval
        self._windows = []
        self._blocks = []
        self._active = active
        self._elapsed = 0
        self._limit = limit
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
    def active(self, active):
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
        ret = 'id:%s, interval:%d, limit:%d, active:%d' % (
            self._id, self._interval, self._limit, self.active)
        return ret

    def target_desc(self):
        ret = ''
        for window in self._windows:
            ret += '\twindow: <%s>\n' % window.id
        for block in self._blocks:
            ret += '\tblock: <%s>\n' % block.full_id
        return ret


class Move(Modifier):
    def __init__(self, scene, id,
                 step, direction,
                 windows=None, blocks=None, active=True, interval=1, limit=0):

        super().__init__(scene, id, interval, limit, windows, blocks, active)

        self._direction = MoveDirection[direction]
        self._step = step

    def execute(self, target):
        if not isinstance(target, Window) and not isinstance(target, Block):
            raise Exception("Unhandled type <%s>" % type(target))

        if self._direction == MoveDirection.NORTH:
            target.y = target.y - self._step
        elif self._direction == MoveDirection.SOUTH:
            target.y = target.y + self._step
        elif self._direction == MoveDirection.WEST:
            target.x = target.x - self._step
        elif self._direction == MoveDirection.EAST:
            target.x = target.x + self._step
        else:
            raise Exception("Unknown direction <%s>" % self._direction.name)

    def __str__(self):
        ret = 'Move(' + Modifier.__str__(self)
        ret += ", step:%d, direction:%s)\n" % (
            self._step, self._direction)
        ret += self.target_desc()
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
