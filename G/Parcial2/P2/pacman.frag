#version 330 core

in vec2 vtexCoord;
out vec4 fragColor;

uniform vec3 boundingBoxMax;
uniform vec3 boundingBoxMin;
uniform sampler2D colormap;

void main()
{
    // pacman
    if(vtexCoord.s >= 0.3 && vtexCoord.s <= 0.4 && vtexCoord.t >= 0.2 && vtexCoord.t <= 0.3){
        fragColor = texture(colormap,vec2(5*(vtexCoord.s-0.3)+0.5,(vtexCoord.t-0.2)*10));
    }
    // fantasma 1 vermell
    else if(vtexCoord.s >= 0.7 && vtexCoord.s <= 0.8 && vtexCoord.t >= 0.6 && vtexCoord.t <= 0.7){
        fragColor = texture(colormap,vec2(5*(vtexCoord.s-0.7),(vtexCoord.t-0.6)*10));
    }
    // fantasma 2 blau
    else if(vtexCoord.s >= 0.2 && vtexCoord.s <= 0.3 && vtexCoord.t >= 0.7 && vtexCoord.t <= 0.8){
        fragColor = texture(colormap,vec2(5*(vtexCoord.s-0.2),(vtexCoord.t-0.7)*10));
        if(fragColor == vec4(1,0,0,1)) fragColor = vec4(0,0,1,1);
    }
    // fantasma 3 taronja
    else if(vtexCoord.s >= 0.3 && vtexCoord.s <= 0.4 && vtexCoord.t >= 0.3 && vtexCoord.t <= 0.4){
        fragColor = texture(colormap,vec2(5*(vtexCoord.s-0.3),(vtexCoord.t-0.3)*10));
        if(fragColor == vec4(1,0,0,1)) fragColor = vec4(1,0.65,0,1);
    }
    // fantasma 3 rosa
    else if(vtexCoord.s >= 0.8 && vtexCoord.s <= 0.9 && vtexCoord.t >= 0.2 && vtexCoord.t <= 0.3){
        fragColor = texture(colormap,vec2(5*(vtexCoord.s-0.8),(vtexCoord.t-0.2)*10));
        if(fragColor == vec4(1,0,0,1)) fragColor = vec4(1,0.75,0.8,1);
    }
    // bordes exteriors
    else if(vtexCoord.s > 0.98 || vtexCoord.s < 0.02 || vtexCoord.t > 0.98 || vtexCoord.t < 0.02)
        fragColor = vec4(0,1,0,1);
    //pindoles
    else if((fract(10*(vtexCoord.s-0.05)) < 0.05 ||  fract(10*(vtexCoord.s-0.05)) > 0.95) &&
            (fract(10*(vtexCoord.t-0.05)) < 0.05 ||  fract(10*(vtexCoord.t-0.05)) > 0.95))
        fragColor = vec4(1,1,0,1);
    //paret
    else if(vtexCoord.t <= 0.9 && vtexCoord.t >= 0.2 && vtexCoord.s >= 0.095 && vtexCoord.s <= 0.105)
        fragColor = vec4(0,1,0,1);
    //paret
    else if(vtexCoord.t <= 0.905 && vtexCoord.t >= 0.895 && vtexCoord.s >= 0.1 && vtexCoord.s <= 0.7)
        fragColor = vec4(0,1,0,1);
    //paret
    else if(vtexCoord.t <= 0.505 && vtexCoord.t >= 0.495 && vtexCoord.s >= 0.3 && vtexCoord.s <= 0.8)
        fragColor = vec4(0,1,0,1);
    //paret
    else if(vtexCoord.t <= 0.8 && vtexCoord.t >= 0.6 && vtexCoord.s >= 0.495 && vtexCoord.s <= 0.505)
        fragColor = vec4(0,1,0,1);
    //paret
    else if(vtexCoord.t <= 0.4 && vtexCoord.t >= 0.1 && vtexCoord.s >= 0.695 && vtexCoord.s <= 0.705)
        fragColor = vec4(0,1,0,1);
    // fons negre
    else fragColor = vec4(0);
}
