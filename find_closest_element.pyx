cimport numpy as c_np 

cimport cython_declaration_module

def find_closest_element_wrapper(c_np.ndarray[c_np.float64_t, ndim=1] input_data, key):
    cdef int result
    result = cython_declaration_module.find_closest_element_in_c(&input_data[0], len(input_data), key)
    return result