#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D digits;

void main()
{
    vec2 scale = vec2(vtexCoord.s/10.0 * 6.0, vtexCoord.t);
    vec2 frame;

    if (scale.s < 0.1) {
        frame = vec2(2/10.0,0);
    }
    else if (scale.s < 0.2) {
        frame = vec2(1/10.0 - 0.1,0);
    }
    else if (scale.s < 0.3) {
        frame = vec2(7/10.0 - 0.2,0);
    }
    else if (scale.s < 0.4) {
        frame = vec2(7/10.0 - 0.3,0);
    }
    else if (scale.s < 0.5) {
        frame = vec2(8/10.0 - 0.4,0);
    }
    else {
        frame = vec2(1/10.0 - 0.5,0);
    }

    vec4 colorFrag = texture(digits, scale + frame);

    if(colorFrag.a < 0.5) discard;
    else fragColor = vec4(0.0,0.0,1.0,1.0);
}
