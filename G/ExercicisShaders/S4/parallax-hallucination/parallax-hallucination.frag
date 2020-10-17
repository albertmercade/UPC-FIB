#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D map;
uniform float time;
uniform float a;
const float PI = 3.141592;

void main()
{
    vec4 c = texture(map, vtexCoord);
    float maxRGB = max(max(c.r,c.g),c.b);
    vec2 u = vec2(maxRGB);
    float t = 2.0 * PI * time;
    mat2 rot2d = mat2(vec2(cos(t), sin(t)), vec2(-sin(t),cos(t)));
    vec2 offset = (a/100.0) * rot2d * u;
    fragColor = texture(map, vtexCoord+offset);
}
