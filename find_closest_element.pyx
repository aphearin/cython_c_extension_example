cimport cython_declaration_module

def find_closest_element_wrapper(double[:] input_data, key):
    """
    Find the index into the array ``input_data`` that gives the value closest
    to ``key``.

    Parameters
    ----------
    input_data : 1D array with dtype double
        The input array to search through.
    key : float
        The value to find the closest ``input_data`` element of.

    Returns
    -------
    idx : int
        The index into ``input_data`` of the closest element to ``key``.
    """
    cdef int result
    result = cython_declaration_module.find_closest_element_in_c(&input_data[0], len(input_data), key)
    return result