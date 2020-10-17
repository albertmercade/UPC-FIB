#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform float time;
uniform float amp = 0.5;
uniform float freq = 0.25;
const float PI = 3.141592;

void main()
{
    float r = -amp * sin(2 * PI * time * freq + vertex.y);
    mat3 rotX = mat3(vec3(1,0,0), vec3(0,cos(r),sin(r)), vec3(0,-sin(r),cos(r)));

    vec3 N = normalize(normalMatrix * normal);
    frontColor = vec4(color,1.0) * N.z;
    gl_Position = modelViewProjectionMatrix * vec4(vertex*rotX, 1.0);
}
