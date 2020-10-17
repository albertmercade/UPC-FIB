#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform float time;
uniform float scale;

float triangleWave(float x) {
    return abs(mod(x, 2) - 1.0);
}

void main()
{
    vec3 t = vec3(2*triangleWave(time/1.618), 2*triangleWave(time), 0);
    vec3 trans = scale * (vec3(-1,-1,0) + t);

    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(0.3,0.3,0.9,1.0) * N.z;
    gl_Position = modelViewProjectionMatrix * vec4((vertex + trans)/scale, 1.0);
}
