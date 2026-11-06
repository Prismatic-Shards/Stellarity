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
    
    float shift = 0.009 * (1.0 + dist * 2.2);
    float r = texture(InSampler, texCoord + delta * shift * 14.0).r;
    float g = texture(InSampler, texCoord).g;
    float b = texture(InSampler, texCoord - delta * shift * 14.0).b;
    float a = texture(InSampler, texCoord).a;
    vec3 scene = vec3(r, g, b);
    
    vec3 corePink = vec3(1.00, 0.52, 0.95);
    vec3 deepViolet = vec3(0.68, 0.18, 0.98);
    vec3 astralTone = mix(corePink, deepViolet, smoothstep(0.12, 0.85, dist));
    
    float centerGlow = 1.0 - smoothstep(0.0, 0.95, dist);
    vec3 flashLight = astralTone * (0.85 + centerGlow * 0.90);
    
    vec3 result = scene * 0.15 + flashLight;
    result += vec3(1.0, 0.88, 0.98) * (1.0 - smoothstep(0.0, 0.35, dist)) * 0.50;
    
    fragColor = vec4(result, a);
}
