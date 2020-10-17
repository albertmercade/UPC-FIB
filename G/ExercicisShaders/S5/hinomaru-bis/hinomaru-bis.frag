#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    vec2 C = vec2(0.5);
    float d = distance(C, vtexCoord);

    float r = 0.2;
    float w = 0.007;

    fragColor = mix(vec4(1.0,0.0,0.0,1.0), vec4(1.0), smoothstep(r-w,r+w,d));
}
