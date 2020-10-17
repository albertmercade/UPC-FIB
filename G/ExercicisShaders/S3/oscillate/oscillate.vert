#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform mat4 modelViewMatrix;

uniform bool eyespace;
uniform vec3 boundingBoxMin;
uniform vec3 boundingBoxMax;
uniform float time;
const float PI = 3.141592;

void main()
{
    float r = distance(boundingBoxMax, boundingBoxMin)/2;
    float sf = (r / 10) * sin(time);
    if(eyespace) {
        float yES = (modelViewMatrix * vec4(vertex,1.0)).y;
        sf *= yES;
    }
    else sf *= vertex.y;

    frontColor = vec4(color,1.0);
    gl_Position = modelViewProjectionMatrix * vec4(vertex + normalize(normal)*sf, 1.0);
}
