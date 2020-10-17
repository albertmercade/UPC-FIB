#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;
out vec2 vtexCoord;
out vec3 fragN;
out vec3 fragV;
out vec3 fragL;

uniform bool world;

uniform mat4 modelViewProjectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 viewMatrixInverse;
uniform mat3 normalMatrix;

uniform vec4 lightPosition;

void main()
{
    if(world) {
        fragN = normal;
        fragL = (viewMatrixInverse * lightPosition).xyz - vertex.xyz;
        fragV = (viewMatrixInverse*vec4(0,0,0,1)).xyz - vertex.xyz;
    }
    else {
        fragN = normalize(normalMatrix * normal);
        vec3 fragP = (viewMatrix * vec4(vertex, 1.0)).xyz;
        fragL = lightPosition.xyz - fragP;
        fragV = -fragP;
    }


    gl_Position = modelViewProjectionMatrix * vec4(vertex, 1.0);
}
