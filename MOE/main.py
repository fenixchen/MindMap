# -*- coding:utf-8 -*-

import app
import scene

if __name__ == '__main__':
    scene = scene.Scene('scene/button.yaml')
    app = app.App(scene)
    app.run()
