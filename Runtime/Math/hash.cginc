#ifndef HASH
#define HASH

//This hash uses a sine, which can be inconsistent on various platforms when using big values
float hash21(float2 p)
{
    return frac(sin(dot(p, float2(1.0,113.0)))*43758.5453123);
}

#endif
