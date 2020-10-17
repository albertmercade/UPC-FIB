#version 330 core

in vec3 vertex;
in vec3 normal;

in vec3 matamb;
in vec3 matdiff;
in vec3 matspec;
in float matshin;

uniform mat4 proj;
uniform mat4 view;
uniform mat4 TG;

uniform vec3 posFocus;
uniform bool llumPilota;

out vec4 vertexSCO;
out vec3 normalSCO;
out vec3 posFocusSCO;

out vec3 fmatamb;
out vec3 fmatdiff;
out vec3 fmatspec;
out float fmatshin;


void main()
{
    vertexSCO = (view * TG * vec4(vertex, 1.0));
    normalSCO = normalize(inverse (transpose (mat3 (view * TG))) * normal);

    if(llumPilota) posFocusSCO = (view * vec4(posFocus, 1.0)).xyz;
    else posFocusSCO = posFocus;

    fmatamb = matamb;
    fmatdiff = matdiff;
    fmatspec = matspec;
    fmatshin = matshin;

    gl_Position = proj * view * TG * vec4 (vertex, 1.0);
}
