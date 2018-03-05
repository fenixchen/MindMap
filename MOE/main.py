# -*- coding:utf-8 -*-

import app
import scene

TEST_UI = False
if __name__ == '__main__':
    if TEST_UI:
        app = app.App(
            scene.Scene('scene/window.yaml'),
            scene.Scene('scene/rect.yaml'),
            scene.Scene('scene/line.yaml'),
            scene.Scene('scene/progressbar.yaml'),
            scene.Scene('scene/menu.yaml'),
            scene.Scene('scene/button.yaml'),
        )
        app.run()
    else:
        scene = scene.Scene('Scene/hello.yaml')
        #app.App(scene).run()
        scene.generate_binary()
