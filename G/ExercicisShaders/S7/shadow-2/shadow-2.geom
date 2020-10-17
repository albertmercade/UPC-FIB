#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

uniform mat4 modelViewProjectionMatrix;
uniform vec3 boundingBoxMin;
uniform vec3 boundingBoxMax;

in vec4 vfrontColor[];
out vec4 gfrontColor;

void main( void )
{
    for( int i = 0 ; i < 3 ; i++ )
	{
		gfrontColor = vfrontColor[i];
		gl_Position = modelViewProjectionMatrix * gl_in[i].gl_Position;
		EmitVertex();
	}
    EndPrimitive();

	for( int i = 0 ; i < 3 ; i++ )
	{
		gfrontColor = vec4(0);
        vec4 P = gl_in[i].gl_Position;
        P.y *= 0.01;
        P.y += boundingBoxMin.y;
		gl_Position = modelViewProjectionMatrix * P;
		EmitVertex();
	}
    EndPrimitive();

    float R = distance(boundingBoxMax,boundingBoxMin)/2;
    vec3 C = (boundingBoxMax + boundingBoxMin)/2;
    gfrontColor = vec4(0,1,1,1);
    if(gl_PrimitiveIDIn == 0){
        gl_Position = modelViewProjectionMatrix * vec4(C.x-R,boundingBoxMin.y-0.01,C.z+R,1);
        EmitVertex();
        gl_Position = modelViewProjectionMatrix * vec4(C.x+R,boundingBoxMin.y-0.01,C.z+R,1);
        EmitVertex();
        gl_Position = modelViewProjectionMatrix * vec4(C.x-R,boundingBoxMin.y-0.01,C.z-R,1);
        EmitVertex();
        gl_Position = modelViewProjectionMatrix * vec4(C.x+R,boundingBoxMin.y-0.01,C.z-R,1);
        EmitVertex();
        EndPrimitive();
    }
}
