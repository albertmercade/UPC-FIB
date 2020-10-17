#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    float r = 0.26;
    vec2 C = vec2(1,0.5);
    float dist = distance(C,vec2(vtexCoord.s*2, vtexCoord.t));

    if ((vtexCoord.s < 1.0/3.0 && vtexCoord.t > 0.5) || (vtexCoord.s > 2.0/3.0 && vtexCoord.t > 0.5)) {
        fragColor = vec4(1,0,0,1);
    }
    else if ((vtexCoord.s < 1.0/3.0 && vtexCoord.t < 0.5) || (vtexCoord.s > 2.0/3.0 && vtexCoord.t < 0.5)) {
        fragColor = vec4(1,1,0,1);
    }
    else fragColor = mix(vec4(1.0), vec4(0.43,0.18,0.63,1.0), step(r,dist));
}
