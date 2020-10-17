#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform int stripes = 16;
uniform vec2 origin = vec2(0,0);

void main()
{
    float dist = distance(origin, vtexCoord);
    float m = mod(dist*16, 2);
    
    if (m <= 1) fragColor = vec4(1,0,0,1);
    else fragColor = vec4(1,1,0,1);
}
