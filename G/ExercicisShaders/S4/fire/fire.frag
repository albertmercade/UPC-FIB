#version 330 core

in vec4 frontColor;
in vec2 vtexCoord;
out vec4 fragColor;

uniform float time;
uniform float slice=0.1;
uniform sampler2D fire0;
uniform sampler2D fire1;
uniform sampler2D fire2;
uniform sampler2D fire3;

void main()
{
    if(mod(time,4*slice)/slice < 1) fragColor = texture(fire0, vtexCoord);
    else if(mod(time,4*slice)/slice < 2) fragColor = texture(fire1, vtexCoord);
    else if(mod(time,4*slice)/slice < 3) fragColor = texture(fire2, vtexCoord);
    else fragColor = texture(fire3, vtexCoord);
}
