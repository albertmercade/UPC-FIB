#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    vec4 gris = vec4(0.8);
    vec4 negre = vec4(0.0);

    float x =  floor(mod(vtexCoord.s * 8,2));
    float y = floor(mod(vtexCoord.t * 8,2));

    if (x == y) fragColor = gris;
    else fragColor = negre;
}
