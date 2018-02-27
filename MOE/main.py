# -*- coding:utf-8 -*-

import app
import scene

if __name__ == '__main__':
    scene = scene.Scene('scene/rect.yaml')
    app = app.App(scene)
    app.run()
