#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec3 normalf;
out vec3 vertexf;

uniform mat4 modelViewProjectionMatrix;

void main()
{
    normalf = normal;
    vertexf = vertex;
    gl_Position = modelViewProjectionMatrix * vec4(vertexf, 1.0);
}
