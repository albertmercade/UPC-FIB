#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform float n = 8;

void main()
{
    vec4 gris = vec4(0.8);
    vec4 negre = vec4(0.0);

    float x =  floor(mod(vtexCoord.s * n,2));
    float y = floor(mod(vtexCoord.t * n,2));

    if (x == y) fragColor = gris;
    else fragColor = negre;
}
