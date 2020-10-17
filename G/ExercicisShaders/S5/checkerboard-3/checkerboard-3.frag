#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform float n = 8;

void main()
{
    vec4 gris = vec4(0.8);
    vec4 negre = vec4(0.0);

    float x = mod(vtexCoord.s*n,1);
    float y = mod(vtexCoord.t*n,1 );

    if (y <= 0.1 || x <= 0.1 ) fragColor = negre;
    else fragColor = gris;
}
