#version 330 core

in vec4 gfrontColor;
in vec2 gtexCoord;
in float isTop;
in vec3 gnormal;
out vec4 fragColor;

uniform sampler2D lego;

const vec4 R = vec4(1,0,0,1);
const vec4 G = vec4(0,1,0,1);
const vec4 B = vec4(0,0,1,1);
const vec4 C = vec4(0,1,1,1);
const vec4 Y = vec4(1,1,0,1);

vec4 basicColor(vec4 color) {
    float dR = length(color-R);
    float dG = length(color-G);
    float dB = length(color-B);
    float dC = length(color-C);
    float dY = length(color-Y);

    if(dR <= dG && dR <= dB && dR <= dC && dR <= dY) return R;
    else if(dG <= dB && dG <= dC && dG <= dY) return G;
    else if(dB <= dC && dB <= dY) return B;
    else if(dC <= dY) return C;
    else return Y;
}

void main()
{
    fragColor = basicColor(gfrontColor)*normalize(gnormal).z;
    if (isTop > 0.0) fragColor*=texture(lego, gtexCoord);
}
