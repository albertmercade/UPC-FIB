#version 330 core

layout(triangles) in;
layout(triangle_strip, max_vertices = 36) out;

in vec4 vfrontColor[];
out vec4 gfrontColor;

uniform float time;
uniform float speed = 0.2;

const float PI = 3.141592;

void main(void) {
	float m = mod(time*speed,2.0);

    if(mod(gl_PrimitiveIDIn,2) == 0){
        if(m <= 1) {
            for(int i = 0; i < 3; ++i) {
                gfrontColor = vfrontColor[i];
                gl_Position = gl_in[i].gl_Position;
                EmitVertex();
            }
            EndPrimitive();
        }
        else {
            vec4 bar = (gl_in[0].gl_Position + gl_in[1].gl_Position + gl_in[2].gl_Position)/3;
            float f = (sin(2*PI*fract(speed*time) + 3*PI/2)+1)/2;
            for(int i = 0; i < 3; ++i) {
                gfrontColor = vfrontColor[i];
                gl_Position = mix(gl_in[i].gl_Position,bar,f);
                EmitVertex();
            }
            EndPrimitive();
        }
    }
    else {
        if(m > 1) {
            for(int i = 0; i < 3; ++i) {
                gfrontColor = vfrontColor[i];
                gl_Position = gl_in[i].gl_Position;
                EmitVertex();
            }
            EndPrimitive();
        }
        else {
            vec4 bar = (gl_in[0].gl_Position + gl_in[1].gl_Position + gl_in[2].gl_Position)/3;
            float f = (sin(2*PI*fract(speed*time) + 3*PI/2)+1)/2;
            for(int i = 0; i < 3; ++i) {
                gfrontColor = vfrontColor[i];
                gl_Position = mix(gl_in[i].gl_Position,bar,f);
                EmitVertex();
            }
            EndPrimitive();
        }
    }
}
