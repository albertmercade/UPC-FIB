#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    float f = mod(fract(vtexCoord.s)*9, 2);

    fragColor = mix(vec4(1,1,0,1), vec4(1,0,0,1), step(1, f));
}
