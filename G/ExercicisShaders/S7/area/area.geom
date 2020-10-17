#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

out vec4 gfrontColor;

uniform mat4 projectionMatrix;

const float areamax = 0.0005;
const vec4 R = vec4(1,0,0,1);
const vec4 Y = vec4(1,1,0,1);

void main( void )
{
    vec3 A = gl_in[0].gl_Position.xyz - gl_in[1].gl_Position.xyz;
    vec3 B = gl_in[2].gl_Position.xyz - gl_in[1].gl_Position.xyz;

    float area = length(cross(A,B))/2;
    area /= areamax;

    gfrontColor = mix(R,Y,area);
	for( int i = 0 ; i < 3 ; i++ )
	{
		gl_Position = projectionMatrix * gl_in[i].gl_Position;
		EmitVertex();
	}
    EndPrimitive();
}
