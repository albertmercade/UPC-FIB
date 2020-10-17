#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform float time;

void main()
{
    float theta;

    if(vertex.y >= 0.5) theta = (vertex.y - 0.5)*sin(time);
    else theta = 0;

    mat3 rotX = mat3(vec3(1,0,0), vec3(0,cos(theta),sin(theta)), vec3(0,-sin(theta),cos(theta)));
    vec3 vert = rotX*(vertex - vec3(0,1,0)) + vec3(0,1,0);

    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0);
    gl_Position = modelViewProjectionMatrix * vec4(vert, 1.0);
}
