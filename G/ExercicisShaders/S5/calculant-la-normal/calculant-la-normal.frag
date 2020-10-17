#version 330 core

in vec4 frontColor;
in vec3 vertexF;
out vec4 fragColor;

uniform vec4 matAmbient;
uniform vec4 matDiffuse;
uniform vec4 lightAmbient;
uniform vec4 lightDiffuse;
uniform vec4 lightPosition;

void main() {
    vec3 N = normalize(cross(dFdx(vertexF), dFdy(vertexF)));

    fragColor = frontColor * N.z;
}
