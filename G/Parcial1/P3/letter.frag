#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

void main()
{
    float r = 0.9/14.0;
    bool paint = false;

    for (int i = 0; i < 6; ++i) {
        vec2 C = vec2(1.5/7.0,(i+0.5)/7.0);
        float dist = distance(C, vtexCoord);
        if(dist <= r) paint = true;
    }

    for (int i = 2; i < 5; ++i) {
        vec2 C = vec2((i+0.5)/7.0,6.5/7.0);
        float dist = distance(C, vtexCoord);
        if(dist <= r) paint = true;
    }

    for (int i = 0; i < 6; ++i) {
        vec2 C = vec2(5.5/7.0,(i+0.5)/7.0);
        float dist = distance(C, vtexCoord);
        if(dist <= r) paint = true;
    }

    for (int i = 2; i < 5; ++i) {
        vec2 C = vec2((i+0.5)/7.0,2.5/7.0);
        float dist = distance(C, vtexCoord);
        if(dist <= r) paint = true;
    }

    float grad = distance(vec2(0,0), vtexCoord) / sqrt(2);

    if (paint == true) fragColor = mix(vec4(1,0,0,1), vec4(0,0,1,1), grad);
    else discard;
}
