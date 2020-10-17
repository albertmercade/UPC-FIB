#version 330 core

in vec4 frontColor;
in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D noise0;
uniform sampler2D rock1;
uniform sampler2D grass2;

void main()
{
    float soroll = texture(noise0, vtexCoord).r;
    vec4 roca = texture(rock1, vtexCoord);
    vec4 herba = texture(grass2, vtexCoord);
    fragColor = mix(roca, herba, soroll);
}
