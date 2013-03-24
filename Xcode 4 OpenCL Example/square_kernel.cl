//
//  square_kernel.cl
//  Xcode 4 OpenCL Example
//
//  Created by Daniel Farrell on 24/03/2013.
//  Copyright (c) 2013 d. All rights reserved.
//

/* https://developer.apple.com/library/mac/#documentation/Performance/Conceptual/OpenCL_MacProgGuide/ExampleHelloWorld/Example_HelloWorld.html#//apple_ref/doc/uid/TP40008312-CH112-SW2 */

////////////////////////////////////////////////////////////////////////////////
// Simple OpenCL kernel that squares an input array.
// This code is stored in a file called mykernel.cl.

kernel void square(global float* input, global float* output) // [1]
{
    size_t i = get_global_id(0);
    output[i] = input[i] * input[i];
}

