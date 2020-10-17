#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform float step = 0.2;

in vec4 vfrontColor[];
out vec4 gfrontColor;
out vec2 gtexCoord;
out float isTop;
out vec3 gnormal;

void setVertex(vec3 d, vec3 bar, bool top, vec3 normal, vec4 color) {
    gl_Position = modelViewProjectionMatrix * vec4(bar + step/2*d,1);
    gfrontColor = color;
    if(d.x < 0) d.x += 1;
    if(d.z < 0) d.z += 1;
    gtexCoord = d.xz;
    gnormal = normalize(normal);
    if(top) isTop = 1.0;
    else isTop = 0.0;
    EmitVertex();
}

void main( void )
{
    vec3 bar = (gl_in[0].gl_Position.xyz + gl_in[1].gl_Position.xyz + gl_in[2].gl_Position.xyz)/(3*step);
    bar.x = floor(bar.x + 0.5);
    bar.y = floor(bar.y + 0.5);
    bar.z = floor(bar.z + 0.5);
    bar *= step;
    vec4 color = (vfrontColor[0] + vfrontColor[1] + vfrontColor[2])/3;

    // cara superior
    vec3 normal = normalMatrix * vec3(0,1,0);
    setVertex(vec3(-1,1,1), bar, true, normal, color);
    setVertex(vec3(1,1,1), bar, true, normal, color);
    setVertex(vec3(-1,1,-1), bar, true, normal, color);
    setVertex(vec3(1,1,-1), bar, true, normal, color);
    EndPrimitive();


    // cara inferior
    normal = normalMatrix * vec3(0,-1,0);
    setVertex(vec3(-1,-1,1), bar, false, normal, color);
    setVertex(vec3(1,-1,1), bar, false, normal, color);
    setVertex(vec3(-1,-1,-1), bar, false, normal, color);
    setVertex(vec3(1,-1,-1), bar, false, normal, color);
    EndPrimitive();

    // cara frontal
    normal = normalMatrix * vec3(0,0,1);
    setVertex(vec3(-1,-1,1), bar, false, normal, color);
    setVertex(vec3(1,-1,1), bar, false, normal, color);
    setVertex(vec3(-1,1,1), bar, false, normal, color);
    setVertex(vec3(1,1,1), bar, false, normal, color);
    EndPrimitive();

    // cara posterior
    normal = normalMatrix * vec3(0,0,-1);
    setVertex(vec3(1,1,-1), bar, false, normal, color);
    setVertex(vec3(-1,1,-1), bar, false, normal, color);
    setVertex(vec3(1,-1,-1), bar, false, normal, color);
    setVertex(vec3(-1,-1,-1), bar, false, normal, color);
    EndPrimitive();

    // cara dreta
    normal = normalMatrix * vec3(1,0,0);
    setVertex(vec3(1,-1,1), bar, false, normal, color);
    setVertex(vec3(1,-1,-1), bar, false, normal, color);
    setVertex(vec3(1,1,1), bar, false, normal, color);
    setVertex(vec3(1,1,-1), bar, false, normal, color);
    EndPrimitive();

    // cara esquerra
    normal = normalMatrix * vec3(-1,0,0);
    setVertex(vec3(-1,1,-1), bar, false, normal, color);
    setVertex(vec3(-1,1,1), bar, false, normal, color);
    setVertex(vec3(-1,-1,-1), bar, false, normal, color);
    setVertex(vec3(-1,-1,1), bar, false, normal, color);
    EndPrimitive();
}
