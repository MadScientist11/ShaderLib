#define PI          3.14159265359f
#define TAU         6.28318530718f

#include "Math/lerp.cginc"
#include "Math/invlerp.cginc"

float2 Rotate2D(float2 space, float angle)
{
    return mul(float2x2(cos(angle), sin(angle), -sin(angle), cos(angle)), space);
}