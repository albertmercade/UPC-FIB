#version 330 core

in vec4 frontColor;
out vec4 fragColor;

uniform int n;

void main()
{
    int yCoord = int(gl_FragCoord.y - 0.5);
    if(yCoord % n == 0) fragColor = frontColor;
    else discard;
}
