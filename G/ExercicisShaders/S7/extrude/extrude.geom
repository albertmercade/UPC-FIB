#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

in vec3 vnormal[];
out vec3 gnormal;

uniform mat4 modelViewProjectionMatrix;
uniform float d = 0.5;

void main( void )
{
    vec3 N = normalize((vnormal[0] + vnormal[1] + vnormal[2])/3);
    vec3 A1 = gl_in[0].gl_Position.xyz;
    vec3 B1 = gl_in[1].gl_Position.xyz;
    vec3 C1 = gl_in[2].gl_Position.xyz;

    vec3 A2 = A1 + d*N;
    vec3 B2 = B1 + d*N;
    vec3 C2 = C1 + d*N;

    gnormal = N;
    gl_Position = modelViewProjectionMatrix * vec4(A2,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(B2,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(C2,1);
    EmitVertex();
    EndPrimitive();

    gnormal = -N;
    gl_Position = modelViewProjectionMatrix * vec4(A1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(B1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(C1,1);
    EmitVertex();
    EndPrimitive();

    gnormal = normalize(cross(B1-A1,A2-A1));
    gl_Position = modelViewProjectionMatrix * vec4(A1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(B1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(A2,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(B2,1);
    EmitVertex();
    EndPrimitive();

    gnormal = normalize(cross(C1-B1,B2-B1));
    gl_Position = modelViewProjectionMatrix * vec4(B1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(C1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(B2,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(C2,1);
    EmitVertex();
    EndPrimitive();

    gnormal = normalize(cross(A1-C1,C2-C1));
    gl_Position = modelViewProjectionMatrix * vec4(C1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(A1,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(C2,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(A2,1);
    EmitVertex();
    EndPrimitive();
}
