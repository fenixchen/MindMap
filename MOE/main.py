# -*- coding:utf-8 -*-

import app
import scene

if __name__ == '__main__':
    # scene = scene.Scene('scene/button.yaml')
    # scene = scene.Scene('scene/rect.yaml')
    scene = scene.Scene('scene/window.yaml')
    app = app.App(scene)
    app.run()
