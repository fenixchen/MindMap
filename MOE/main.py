# -*- coding:utf-8 -*-

import app
from scene import Scene

if __name__ == '__main__':
    app = app.App(
        Scene('scene/line.yaml'),
        Scene('scene/rect.yaml'),
        Scene('scene/progressbar.yaml'),
        Scene('scene/menu.yaml'),
        Scene('scene/button.yaml'),
        Scene('scene/window.yaml')
    )
    app.run()
