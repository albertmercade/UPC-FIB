#version 330 core

in vec3 fragN;
in vec3 fragV;
in vec3 fragP;

out vec4 fragColor;

uniform vec4 lightAmbient;
uniform vec4 lightDiffuse;
uniform vec4 lightSpecular;
uniform vec4 lightPosition;

uniform vec4 matAmbient;
uniform vec4 matDiffuse;
uniform vec4 matSpecular;
uniform float matShininess;

vec4 phong(vec3 N, vec3 V, vec3 L) {
	N = normalize(N);
	V = normalize(V);
	L = normalize(L);
	vec3 R = normalize(2.0 *dot(N,L)*N-L);
	float ldiff = max(0.0, dot(N,L));
	float lspec = 0;
	if (ldiff > 0) lspec = pow(max(0.0, dot(R,V)), matShininess);
	return matAmbient*lightAmbient + matDiffuse*lightDiffuse*ldiff + matSpecular*lightSpecular*lspec;
}

void main()
{
	vec3 fragL = lightPosition.xyz - fragP;
    fragColor = phong(fragN, fragV, fragL);
}
