#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D sampler;
uniform float time;

void main()
{
    vec2 offset = vec2(0.057,-0.172);
    vec4 orig = texture(sampler, vtexCoord);
    vec4 new = texture(sampler, vtexCoord + offset);
    float dist = distance(vtexCoord, vec2(0.393,0.652));
    
    if (fract(time) <= 0.5) fragColor = orig;
    else fragColor = mix(new,orig,step(0.025,dist));
}
