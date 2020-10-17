#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D colorMap;
uniform float time;

void main()
{
    int u = int(time) % 10;
    int d = int(time/10) % 10;
    int c = int(time/100) % 10;

    vec4 col;

    if(vtexCoord.s < 0.1) {
        col = texture(colorMap, vtexCoord + vec2(c/10.0,0));
    }
    else if (vtexCoord.s < 0.2) {
        col = texture(colorMap, vtexCoord + vec2(d/10.0-0.1,0));
    }
    else {
        col = texture(colorMap, vtexCoord + vec2(u/10.0-0.2,0));
    }

    if(col.a < 0.5) discard;
    else fragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
