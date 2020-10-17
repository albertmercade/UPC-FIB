#version 330 core

in vec3 gnormal;
in vec3 gpos;
out vec4 fragColor;

uniform mat3 normalMatrix;
uniform sampler2D grass_top0;
uniform sampler2D grass_side1;
uniform float d = 0.1;

void main()
{
    if (gnormal.z == 0.0) {
        vec4 gs = texture(grass_side1,-vec2(4*(gpos.x-gpos.y),1.0 - gpos.z/d));
        if (gs.a < 0.1) discard;
        else fragColor = gs;
    }
    else {
        fragColor = texture(grass_top0, 4*gpos.xy);
    }
}
