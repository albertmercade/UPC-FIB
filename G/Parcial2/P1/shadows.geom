#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

in vec4 vfrontColor[];
out vec4 gfrontColor;

uniform mat4 modelViewProjectionMatrix;
uniform vec3 boundingBoxMin;

void main( void )
{
	for( int i = 0 ; i < 3 ; i++ )
	{
		gfrontColor = vfrontColor[i];
		gl_Position = modelViewProjectionMatrix * gl_in[i].gl_Position;
		EmitVertex();
	}
    EndPrimitive();

    // Color negre
    gfrontColor = vec4(0);

    vec4 P1 = gl_in[0].gl_Position;
    vec4 P2 = gl_in[1].gl_Position;
    vec4 P3 = gl_in[2].gl_Position;

    // projeccio a boundingBoxMin.x
    gl_Position = modelViewProjectionMatrix * vec4(boundingBoxMin.x,P1.y,P1.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(boundingBoxMin.x,P2.y,P2.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(boundingBoxMin.x,P3.y,P3.z,1);
    EmitVertex();
    EndPrimitive();

    // projeccio a boundingBoxMin.y
    gl_Position = modelViewProjectionMatrix * vec4(P1.x,boundingBoxMin.y,P1.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(P2.x,boundingBoxMin.y,P2.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(P3.x,boundingBoxMin.y,P3.z,1);
    EmitVertex();
    EndPrimitive();

    // projeccio a boundingBoxMin.z
    gl_Position = modelViewProjectionMatrix * vec4(P1.x,P1.y,boundingBoxMin.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(P2.x,P2.y,boundingBoxMin.z,1);
    EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(P3.x,P3.y,boundingBoxMin.z,1);
    EmitVertex();
    EndPrimitive();
}
