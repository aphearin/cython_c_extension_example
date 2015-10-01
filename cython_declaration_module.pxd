""" Cython declaration of the C extension. 
"""

cdef extern from "minimal_to_wrap.h":
	int find_closest_element_in_c(double * input_data, int size_of_data, double key);
