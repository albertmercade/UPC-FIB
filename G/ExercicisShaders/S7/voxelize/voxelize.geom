#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform float step = 0.2;

out vec4 gfrontColor;

void main( void )
{
    vec4 aux = (gl_in[0].gl_Position + gl_in[1].gl_Position + gl_in[2].gl_Position)/(3*step);
    vec3 bar = step*vec3(int(aux.x), int(aux.y), int(aux.z));
    float hs = step/2;
    vec4 color = vec4(vec3(0.8),1);

    // cara superior
    gfrontColor = color * (normalMatrix * vec3(0,1,0)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,-hs),1);
	EmitVertex();
    EndPrimitive();

    // cara inferior
    gfrontColor = color * (normalMatrix * vec3(0,-1,0)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,hs),1);
	EmitVertex();
    EndPrimitive();

    // cara frontal
    gfrontColor = color * (normalMatrix * vec3(0,0,1)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,hs),1);
	EmitVertex();
    EndPrimitive();

    // cara posterior
    gfrontColor = color * (normalMatrix * vec3(0,0,-1)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,-hs),1);
	EmitVertex();
    EndPrimitive();

    // cara dreta
    gfrontColor = color * (normalMatrix * vec3(1,0,0)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,-hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(hs,hs,-hs),1);
	EmitVertex();
    EndPrimitive();

    // cara esquerra
    gfrontColor = color * (normalMatrix * vec3(-1,0,0)).z;
	gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,hs,hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,-hs),1);
	EmitVertex();
    gl_Position = modelViewProjectionMatrix * vec4(bar+vec3(-hs,-hs,hs),1);
	EmitVertex();
    EndPrimitive();
}
