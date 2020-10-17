#version 330 core

in vec3 vertEye;
in vec3 normEye;
out vec4 fragColor;

uniform vec4 lightDiffuse;
uniform vec4 lightSpecular;

uniform vec4 matDiffuse;
uniform vec4 matSpecular;
uniform float matShininess;

uniform mat4 modelViewMatrixInverse;

uniform int n = 3;
const float PI = 3.141592;

vec4 phong(vec3 N, vec3 V, vec3 L) {
	N = normalize(N);
	V = normalize(V);
	L = normalize(L);
	vec3 R = normalize(2.0 *dot(N,L)*N-L);
	float ldiff = max(0.0, dot(N,L));
	float lspec = 0;
	if (ldiff > 0) lspec = pow(max(0.0, dot(R,V)), matShininess);
	return matDiffuse*lightDiffuse*ldiff/sqrt(float(n)) + matSpecular*lightSpecular*lspec;
}

void main() {
    float angle = 2 * PI / n;
	vec3 base = vec3(10,0,0) - vertEye;

    for(int i = 0; i < n; ++i) {
		float c = cos(angle*i);
		float s = sin(angle*i);
		mat3 rotZ = mat3(vec3(c, -s, 0), vec3(s, c, 0), vec3(0, 0, 1));
        vec3 lightPos = base * rotZ;
        fragColor += phong(normEye, -vertEye, lightPos);
    }
}
