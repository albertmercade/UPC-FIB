#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

in vec4 vfrontColor[];
in vec3 vnormal[];
out vec4 gfrontColor;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform float time;

const float speed = 1.2;
const float angSpeed = 8.0;

void main( void )
{
    vec4 bar = (gl_in[0].gl_Position + gl_in[1].gl_Position + gl_in[2].gl_Position)/3;
    float a = angSpeed * time;
    mat4 rotZ = mat4(vec4(cos(a),sin(a),0,0), vec4(-sin(a),cos(a),0,0),
                     vec4(0,0,1,0), vec4(0,0,0,1));

    vec3 trans = speed * time * (vnormal[0] + vnormal[1] + vnormal[2])/3;

	for( int i = 0 ; i < 3 ; i++ )
	{
		gfrontColor = vfrontColor[i];
		gl_Position = modelViewProjectionMatrix * ((gl_in[i].gl_Position - bar) * rotZ + vec4(trans,1) + bar);
		EmitVertex();
	}
    EndPrimitive();
}
