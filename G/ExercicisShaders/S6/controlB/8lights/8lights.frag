#version 330 core

in vec3 normalf;
in vec3 vertexf;
out vec4 fragColor;

uniform mat4 modelViewMatrix;
uniform mat4 modelMatrix;
uniform mat4 viewMatrix;
uniform mat3 normalMatrix;

uniform vec4 lightDiffuse;
uniform vec4 lightSpecular;

uniform vec4 matDiffuse;
uniform vec4 matSpecular;
uniform float matShininess;

uniform vec3 boundingBoxMin;
uniform vec3 boundingBoxMax;

vec4 phong(vec3 N, vec3 V, vec3 L) {
	N = normalize(N);
	V = normalize(V);
	L = normalize(L);
	vec3 R = normalize(2.0 *dot(N,L)*N-L);
	float ldiff = max(0.0, dot(N,L));
	float lspec = 0;
	if (ldiff > 0) lspec = pow(max(0.0, dot(R,V)), matShininess);
	return matDiffuse*lightDiffuse*ldiff/2.0 + matSpecular*lightSpecular*lspec;
}

void main()
{
    vec3 P = (modelViewMatrix * vec4(vertexf, 1.0)).xyz;
    vec3 N = normalMatrix * normalf;
    vec3 V = -P;

    float maxx = boundingBoxMax.x;
    float maxy = boundingBoxMax.y;
    float maxz = boundingBoxMax.z;
    float minx = boundingBoxMin.x;
    float miny = boundingBoxMin.y;
    float minz = boundingBoxMin.z;

    fragColor += phong(N, V, (viewMatrix * vec4(boundingBoxMin, 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(minx,miny,maxz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(minx,maxy,minz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(maxx,miny,minz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(minx,maxy,maxz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(maxx,miny,maxz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(vec3(maxx,maxy,minz), 1.0)).xyz - P);
    fragColor += phong(N, V, (viewMatrix * vec4(boundingBoxMax, 1.0)).xyz - P);
}
