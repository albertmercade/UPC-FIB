#version 330 core

in vec4 vertexObj;
in vec3 normalObj;
out vec4 fragColor;

uniform mat4 modelViewMatrix;
uniform mat3 normalMatrix;

uniform sampler2D noise;

vec4 shading(vec3 N, vec3 Pos, vec4 diffuse) {
    vec3 lightPos = vec3(0.0,0.0,2.0);
    vec3 L = normalize( lightPos - Pos );
    vec3 V = normalize( -Pos);
    vec3 R = reflect(-L,N);
    float NdotL = max( 0.0, dot( N,L ) );
    float RdotV = max( 0.0, dot( R,V ) );
    float Ispec = pow( RdotV, 20.0 );
    return diffuse * NdotL + Ispec;
}

void main()
{
    vec3 V = (modelViewMatrix * vertexObj).xyz;
    vec3 N = normalize(normalMatrix * normalObj).xyz;
    vec4 constS = vec4(0,0.3,-0.3,0);
    vec4 constT = vec4(-0.6,-0.3,0.3,0);
    float s = dot(constS, vertexObj);
    float t = dot(constT, vertexObj);
    float noise = texture(noise, vec2(s,t)).r;

    vec4 diffuse;
    vec4 white = vec4(1.0,1.0,1.0,1.0);
    vec4 redish = vec4(0.5,0.2,0.2,1.0);
    if (noise < 0.5) diffuse = mix(white,redish,2*noise);
    else diffuse = mix(redish,white,2*(noise-0.5));

    fragColor = shading(N, V, diffuse);
}
