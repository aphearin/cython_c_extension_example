# cython_c_extension_example
Minimal example of how to write a cython wrapper around a C function

To compile the cython and C code together, type:

$ python setup.py build_ext --inplace

If you are a Mac user, depending on how you have your gcc compiler configured you may need to compile this code via:

$ CC=clang python setup.py build_ext --inplace

Once you've compiled the code, you can open up a python terminal, import the cython module as if it were a python module, and call the find_closest_element_wrapper function. For step-by-step instructions, see tutorial_wrap_c_function_in_python.ipynb.

These notes are in no way, shape or form intended to be comprehensive. Quite the opposite. The purpose is to provide a simple, quickstart example that beginner's can use to pattern-match into their python code, saving them the trouble of having to wade through extensive, technical documentation when there is just a simple C function that needs to be wrapped into a python code base. For comprehensive documentation, see [Calling C functions](http://docs.cython.org/src/tutorial/external.html).