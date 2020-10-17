#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

in vec4 vfrontColor[];
out vec4 gfrontColor;

uniform mat4 modelViewProjectionMatrix;
uniform float disp = 0.05;

const vec4 W = vec4(1);

void main( void )
{
    vec3 A = gl_in[0].gl_Position.xyz;
    vec3 B = gl_in[1].gl_Position.xyz;
    vec3 C = gl_in[2].gl_Position.xyz;
    vec4 cA = vfrontColor[0];
    vec4 cB = vfrontColor[1];
    vec4 cC = vfrontColor[2];

    vec3 bar = (A+B+C)/3;
    vec3 N = normalize(cross(C-B,A-B));
    vec3 X = bar + disp*N;

    gfrontColor = cA;
    gl_Position = modelViewProjectionMatrix * vec4(A,1);
	EmitVertex();
    gfrontColor = cB;
    gl_Position = modelViewProjectionMatrix * vec4(B,1);
    EmitVertex();
    gfrontColor = W;
    gl_Position = modelViewProjectionMatrix * vec4(X,1);
    EmitVertex();
    EndPrimitive();

    gfrontColor = cA;
    gl_Position = modelViewProjectionMatrix * vec4(A,1);
	EmitVertex();
    gfrontColor = cC;
    gl_Position = modelViewProjectionMatrix * vec4(C,1);
    EmitVertex();
    gfrontColor = W;
    gl_Position = modelViewProjectionMatrix * vec4(X,1);
    EmitVertex();
    EndPrimitive();

    gfrontColor = cC;
    gl_Position = modelViewProjectionMatrix * vec4(C,1);
	EmitVertex();
    gfrontColor = cB;
    gl_Position = modelViewProjectionMatrix * vec4(B,1);
    EmitVertex();
    gfrontColor = W;
    gl_Position = modelViewProjectionMatrix * vec4(X,1);
    EmitVertex();
    EndPrimitive();
}
