#version 330 core

in vec2 vtexCoord;
in vec3 N;
out vec4 fragColor;

uniform sampler2D smile;

void main()
{
    float dist = min(distance(vtexCoord + 0.1*normalize(N).xy,vec2(0.34, 0.65)),
                     distance(vtexCoord + 0.1*normalize(N).xy,vec2(0.66, 0.65)));

    fragColor = mix(vec4(0), texture(smile, vtexCoord), step(0.05,dist));
}
