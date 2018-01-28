from cx_Freeze import setup, Executable
import os

os.environ['TCL_LIBRARY'] = r'D:\Python36\tcl\tcl8.6'
os.environ['TK_LIBRARY'] = r'D:\Python36\tcl\tk8.6'

# Dependencies are automatically detected, but it might need
# fine tuning.
buildOptions = dict(packages = [], excludes = [])

import sys
base = 'Win32GUI' if sys.platform=='win32' else None

executables = [
    Executable('app.py', base=base)
]

setup(name='Demo',
      version = '1.0',
      description = '',
      options = dict(build_exe = buildOptions),
      executables = executables)
