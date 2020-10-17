#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec4 frontColor;
out vec2 vtexCoord;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

uniform vec3 boundingBoxMin;
uniform vec3 boundingBoxMax;

void main()
{
    float minY = boundingBoxMin.y;
    float maxY = boundingBoxMax.y;
    float grad = 4 * (vertex.y - minY) / (maxY - minY);

    if (grad < 1) frontColor = mix(vec4(1,0,0,1),vec4(1,1,0,1),fract(grad));
    else if (grad < 2) frontColor = mix(vec4(1,1,0,1),vec4(0,1,0,1),fract(grad));
    else if (grad < 3) frontColor = mix(vec4(0,1,0,1),vec4(0,1,1,1),fract(grad));
    else if (grad < 4) frontColor = mix(vec4(0,1,1,1),vec4(0,0,1,1),fract(grad));
    else frontColor = vec4(0,0,1,1);

    gl_Position = modelViewProjectionMatrix * vec4(vertex, 1.0);
}
