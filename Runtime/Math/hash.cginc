#ifndef HASH
#define HASH

//Source: https://www.shadertoy.com/view/4djSRW
float hash21(float2 p)
{
    float3 p3 = frac(float3(p.xyx) * .1031);
    p3 += dot(p3, p3.yzx + 19.19);
    return frac((p3.x + p3.y) * p3.z);
}

#endif
