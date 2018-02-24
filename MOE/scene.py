# -*- coding:utf-8 -*-

import yaml
import os
import app
from engine import *

logger = Log.get_logger("engine")


class Scene(object):
    _BASE_DIR = None

    def __init__(self, yaml_file=None):
        self._yaml_file = None
        self._windows = []
        self._ingredients = []
        self._palettes = []
        self._modifiers = []
        self._width = -1
        self._height = -1
        self.load(yaml_file)

    @property
    def width(self):
        return self._width

    @property
    def height(self):
        return self._height

    def load(self, yaml_file):
        if not os.path.isfile(yaml_file) or not os.access(yaml_file, os.R_OK):
            raise Exception('%s does not exist or cannot read' % yaml_file)

        self._yaml_file = os.path.abspath(yaml_file).replace('\\', '/')
        logger.debug('Loading OSD yaml file: <%s>' % self._yaml_file)

        Scene._BASE_DIR = os.path.dirname(self._yaml_file) + '/'
        logger.debug('BASE_DIR: <%s>' % Scene._BASE_DIR)

        ImageUtil.BASE_DIR = Scene._BASE_DIR
        self._yaml_file = yaml_file
        with open(self._yaml_file) as f:
            content = f.read()
            config = yaml.load(content)
        if config is None:
            raise Exception('cannot load yaml file %s' % self._yaml_file)

        config = config['OSD']
        assert (config is not None and config['width'] is not None and config['height'] is not None)
        self._width = config['width']
        self._height = config['height']
        logger.debug('Width:%d, Height:%d' % (self._width, self._height))

        logger.debug('')
        for item in config['Palettes']:
            obj = self._create_object(item)
            self._palettes.append(obj)
        for item in config['Ingredients']:
            obj = self._create_object(item)
            self._ingredients.append(obj)

    def _create_object(self, item):
        assert (len(item.keys()) > 0)
        cls_name = list(item.keys())[0]
        values = item[cls_name]
        logger.debug('Construct Class \'%s\' by %s' % (cls_name, values))
        if cls_name not in globals():
            raise Exception('Undefined class <%s>' % cls_name)
        cls = globals()[cls_name]
        obj = cls(**values)
        logger.debug(obj)
        logger.debug('Done')
        return obj

    def __str__(self):
        str  = 'Scene(%d x %d, %s)\n' % (self._width, self._height, self._yaml_file)
        str += 'Palettes[%d]\n' % len(self._palettes)
        for palette in self._palettes:
            str += '\t%s\n' % palette
        str += 'Ingredients[%d]\n' % len(self._ingredients)
        for ingredient in self._ingredients:
            str += '\t%s\n' % ingredient
        return str

if __name__ == '__main__':
    scene = Scene('scene1/osd.yaml')
    app.App(scene).run()
