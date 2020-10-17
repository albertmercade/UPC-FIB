#version 330 core

in vec4 frontColor;
out vec4 fragColor;

in vec3 frag_normal;

void main()
{
	vec3 norm = normalize(frag_normal);
    fragColor = frontColor * norm.z;
}
