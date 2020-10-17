#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D fbm;
uniform float time;
const float PI = 3.14159;

const vec4 red = vec4(1,0,0,1);
const vec4 yel = vec4(1,1,0,1);
const vec4 gre = vec4(0,1,0,1);
const vec4 cia = vec4(0,1,1,1);
const vec4 blu = vec4(0,0,1,1);
const vec4 mag = vec4(1,0,1,1);

void main() {
    float r = texture(fbm, vtexCoord).r;
    float v = sin(2.0 * PI * (0.1*time + r));

    v = 3*(v + 1);

    if (v < 1.0) fragColor = mix(red, yel, fract(v));
    else if (v < 2.0) fragColor = mix(yel, gre, fract(v));
    else if (v < 3.0) fragColor = mix(gre, cia, fract(v));
    else if (v < 4.0) fragColor = mix(cia, blu, fract(v));
    else if (v < 5.0) fragColor = mix(blu, mag, fract(v));
    else fragColor = mix(mag, red, fract(v));

}
