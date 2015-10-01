import numpy as np
from distutils.extension import Extension
from distutils.core import setup
from Cython.Build import cythonize

sources = ['find_closest_element.pyx', 'minimal_to_wrap.c']

extension_obj_instance = Extension(name="find_closest_element", sources=sources,
    include_dirs=[np.get_include()])

setup(name="cython_wrapper",ext_modules = cythonize([extension_obj_instance]))
