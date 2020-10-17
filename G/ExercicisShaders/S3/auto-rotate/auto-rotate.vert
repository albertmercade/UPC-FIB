#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;
out vec2 vtexCoord;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform float speed;
uniform float time;

void main()
{
    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0);

    float r = -speed * time;
    mat3 rotate = mat3(vec3(cos(r),0,-sin(r)), vec3(0,1,0), vec3(sin(r), 0, cos(r)));

    vtexCoord = texCoord;

    gl_Position = modelViewProjectionMatrix * vec4(vertex*rotate, 1.0);
}
