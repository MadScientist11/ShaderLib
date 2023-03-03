inline float CircleSDF(float2 p, float size)
{
    return length(p) - size;
}

inline float Annular(float sdf, float thickness)
{
    return abs(sdf) - thickness;
}

inline float RingSDF(float2 p, float size, float thickness)
{
    return Annular(CircleSDF(p, size), thickness);
}

// Source - https://forum.unity.com/threads/antialiasing-circle-shader.432119/#post-2795633
inline float SampleHard(float sdf, float offset = 1.5)
{
    float pwidth = length(float2(ddx(sdf), ddy(sdf)));
    return smoothstep(0, -pwidth * offset, sdf);
}

inline float SampleLines(float sdf, float factor = 10)
{
    return sin(sdf * factor);
}
