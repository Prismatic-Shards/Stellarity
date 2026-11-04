#version 330
#extension GL_ARB_separate_shader_objects : require

#include <matrix.glsl>

uniform sampler2D Sampler0;
uniform sampler2D Sampler1;

uniform float GameTime;
uniform int EndPortalLayers;

layout(location = 0) in vec4 texProj0;
layout(location = 0) out vec4 fragColor;

const vec3 BACKGROUND_COLOR = vec3(0.012549019607843137, 0.0196078431372549, 0.01803921568627451);
const vec3 LAYER1 = vec3(0.6627450980392157, 0.0784313725490196, 0.5568627450980392);
const vec3 LAYER2 = vec3(0.34509803921568627, 0.20784313725490197, 0.39215686274509803);
const vec3 LAYER3 = vec3(0.1411764705882353, 0.047058823529411764, 0.3137254901960784);
const vec3 LAYER4 = vec3(0.19607843137254902, 0.1450980392156863, 0.21568627450980393);
const vec3 LAYER5 = vec3(0.17647058823529413, 0.06274509803921569, 0.23529411764705882);
const vec3 LAYER6 = vec3(0.1411764705882353, 0.13333333333333333, 0.1450980392156863);
const vec3 LAYER7 = vec3(0.1450980392156863, 0.09411764705882353, 0.1843137254901961);

const vec3[] COLORS = vec3[](
    vec3(0.022087, 0.098399, 0.110818),
    vec3(0.011892, 0.095924, 0.089485),
    vec3(0.027636, 0.101689, 0.100326),
    vec3(0.046564, 0.109883, 0.114838),
    vec3(0.064901, 0.117696, 0.097189),
    vec3(0.063761, 0.086895, 0.123646),
    vec3(0.084817, 0.111994, 0.166380),
    vec3(0.097489, 0.154120, 0.091064),
    vec3(0.106152, 0.131144, 0.195191),
    LAYER7,
    LAYER6,
    LAYER5,
    LAYER4,
    LAYER3, 
    LAYER2,
    LAYER1
);

const mat4 SCALE_TRANSLATE = mat4(
    0.5, 0.0, 0.0, 0.25,
    0.0, 0.5, 0.0, 0.25,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
);

mat4 end_portal_layer(float layer) {
    mat4 translate = mat4(
        1.0, 0.0, 0.0, 17.0 / layer,
        0.0, 1.0, 0.0, (2.0 + layer / 1.5) * (GameTime * 1.5),
        0.0, 0.0, 1.0, 0.0,
        0.0, 0.0, 0.0, 1.0
    );

    mat2 rotate = mat2_rotate_z(radians((layer * layer * 4321.0 + layer * 9.0) * 2.0));
    mat2 scale = mat2((4.5 - layer / 4.0) * 2.0);

    return mat4(scale * rotate) * translate * SCALE_TRANSLATE;
}

void main() {
    vec3 color = BACKGROUND_COLOR;
    for (int i = 0; i < EndPortalLayers; i++) {
        color += textureProj(Sampler1, texProj0 * end_portal_layer(float(i + 1))).rgb * COLORS[i];
    }
    fragColor = vec4(color, 1.0);
}
