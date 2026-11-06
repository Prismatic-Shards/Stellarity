#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec2 center = vec2(0.5);
    vec2 delta = texCoord - center;
    vec2 aspectDelta = delta;
    aspectDelta.x *= ScreenSize.x / ScreenSize.y;
    float dist = length(aspectDelta);
    
    vec4 src = texture(InSampler, texCoord);
    vec3 scene = src.rgb;
    
    vec3 lavender = vec3(0.85, 0.55, 0.95);
    float glow = 0.30 * (1.0 - smoothstep(0.1, 1.2, dist));
    
    vec3 result = mix(scene, scene * vec3(1.08, 0.96, 1.15), glow);
    result += lavender * glow * 0.40;
    
    fragColor = vec4(result, src.a);
}
