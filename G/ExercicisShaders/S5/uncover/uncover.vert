#version 330 core

layout (location = 0) in vec3 vertex;

out float xCoord;

uniform mat4 modelViewProjectionMatrix;

void main()
{
    gl_Position = modelViewProjectionMatrix * vec4(vertex, 1.0);
    xCoord = gl_Position.x / gl_Position.w;
}
