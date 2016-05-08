import numpy as np

cimport cython_declaration_module

def find_closest_element_wrapper(input_data, key):
    """
    Find the index into the array ``input_data`` that gives the value closest
    to ``key``.

    Parameters
    ----------
    input_data : array-like
        The input array to search through.
    key : float
        The value to find the closest ``input_data`` element of.

    Returns
    -------
    idx : int
        The index into ``input_data`` of the closest element to ``key``.
    """
    cdef int result
    cdef double [:] c_input

    # this will only make a copy if the input dtype is not already a double
    c_input = np.array(input_data, dtype=np.double, copy=False)
    result = cython_declaration_module.find_closest_element_in_c(&c_input[0], len(input_data), key)
    return result