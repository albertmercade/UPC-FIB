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
    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0) * N.z;

    float sf = 0.5 + abs(sin(time));
    vec4 pos = modelViewProjectionMatrix * vec4(vertex, 1.0);
    vec3 posNDC = (pos.xyz / pos.w) * vec3(sf,sf,1);
    gl_Position = vec4(posNDC,1.0);
}
