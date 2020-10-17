#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 vertexObj;
out vec3 normalObj;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

void main()
{
    vertexObj = vec4(vertex, 1.0);
    normalObj = normal;
    gl_Position = modelViewProjectionMatrix * vec4(vertex, 1.0);
}
