#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    vec2 C = vec2(0.5);
    float d = distance(C, vtexCoord);

    if (step(0.2,d) != 0) fragColor = vec4(1.0);
    else fragColor = vec4(1.0,0.0,0.0,1.0);
}
