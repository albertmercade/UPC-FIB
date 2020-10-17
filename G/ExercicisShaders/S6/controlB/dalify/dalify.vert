#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform float t = 0.4;
uniform float scale = 4.0;

uniform vec3 boundingBoxMin;
uniform vec3 boundingBoxMax;

void main()
{
    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0) * N.z;

    float c = mix(boundingBoxMin.y, boundingBoxMax.y, t);

    float d = c*scale - c;

    mat4 tra = mat4(vec4(1,0,0,0), vec4(0,1,0,0), vec4(0,0,1,0), vec4(0, d, 0, 1));
    mat4 sca = mat4(vec4(1,0,0,0), vec4(0,scale,0,0), vec4(0,0,1,0), vec4(0,0,0,1));

    vec4 vert;

    if(vertex.y < c) vert = sca * vec4(vertex, 1.0);
    else vert = tra * vec4(vertex, 1.0);
    gl_Position = modelViewProjectionMatrix * vert;
}
