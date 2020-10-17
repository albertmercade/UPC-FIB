#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec2 vtexCoord;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

void main()
{
    vec3 N = normalize(normalMatrix * normal);
    vtexCoord = texCoord;

    vec3 vertexMod = vec3(vertex.x, vertex.y*0.5, vertex.z);

    gl_Position = modelViewProjectionMatrix * vec4(vertexMod, 1.0);
}
