#include <math.h>

//Returns the index of the element of input_data
//closest to key
int find_closest_element_in_c(double * input_data, int size_of_data, double key)
{
    if (size_of_data <= 0)
        return -1;
    //Linearly search through the array to find the closest element
    //distance stores the current minimal distance
    //closest stores the index
    //Sorting the array first would certainly be much faster!
    double distance = fabs(input_data[0] - key);
    int closest = 0;
    for(int i = 0; i < size_of_data; ++i)
    {
        if (fabs(input_data[i] - key) < distance )
        {
            closest = i;
            distance = fabs(input_data[i] - key);
        }
    }
    return closest;
}
