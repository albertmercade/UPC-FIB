#version 330 core

in float xCoord;
out vec4 fragColor;

uniform float time;

void main() {
    if (xCoord >= time - 1.0) discard;
    else fragColor = vec4(0,0,1,1);
}
