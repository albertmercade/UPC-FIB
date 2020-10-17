#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform bool classic;
const float PI = 3.141592;

void main()
{
    vec2 C = vec2(0.5);
    float d = distance(C, vtexCoord);
    float theta = atan(vtexCoord.s-0.5, vtexCoord.t-0.5);

    fragColor = mix(vec4(1.0,0.0,0.0,1.0), vec4(1.0), step(0.2,d));
    if(!classic && mod(16*theta/PI + 0.5, 2) < 1) {
        fragColor = vec4(1.0,0.0,0.0,1.0);
    }
}
