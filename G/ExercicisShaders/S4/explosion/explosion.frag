#version 330 core

in vec4 frontColor;
in vec2 vtexCoord;
out vec4 fragColor;

uniform sampler2D explosion;
uniform float time;

void main()
{
    vec2 scale = vec2(vtexCoord.s/8.0, vtexCoord.t/6.0);
    float k  = mod(30*time,48);
    vec2 frame = vec2(floor(mod(k,8))/8.0,(5-round(k/8)/6.0));

    vec4 color = frontColor * texture(explosion,scale+frame);
    fragColor = color.a * color;
}
