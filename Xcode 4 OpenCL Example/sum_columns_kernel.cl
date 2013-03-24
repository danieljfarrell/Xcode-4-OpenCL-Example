//
//  sum_columns_kernel.cl
//  Xcode 4 OpenCL Example
//
//  Created by Daniel Farrell on 24/03/2013.
//  Copyright (c) 2013 d. All rights reserved.
//

kernel void sum_columns(global float* input, global float* output,  int width, int height)
{
    /*
     input  -- "2D" array of floats with width * height number of elements
     output -- 1D array containing summation of column values with width number of elements
     width  -- number of elements horizontally
     height -- number of elements vertically
     
     Both width and height must be a multiple of 64.
     
     This kernel is not optimised because it can be parallelised further.
     */
    size_t j = get_global_id(0);
    float sum = 0.0;
    int i;
    for(i=0; i<height; i++) {
        sum += input[i + width*j];
    }
    output[j] = sum;
}