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
    vec2 uv = (texCoord - 0.5) * 2.0;
    uv.x *= ScreenSize.x / ScreenSize.y;
    
    float t = GameTime;
    float r = length(uv);
    float angle = atan(uv.y, uv.x);
    
    float heartbeat = pow(1.0 - fract(t * 0.6), 4.0) * 0.05;
    float tendrils = sin(angle * 4.0 + t * 0.7) * 0.035 + cos(angle * 7.0 - t * 0.9) * 0.02;
    
    float dist = r + heartbeat + tendrils;
    float v = smoothstep(0.70 - heartbeat * 0.10, 1.55, dist);
    float vignette = clamp(1.0 - v, 0.40, 1.0);
    
    vec2 dir = r > 0.001 ? uv / r : vec2(0.0);
    float split = 0.0018 * (1.0 - vignette);
    
    float red = texture(InSampler, texCoord - dir * split).r;
    float green = texture(InSampler, texCoord).g;
    float blue = texture(InSampler, texCoord + dir * split).b;
    vec3 scene = vec3(red, green, blue);
    
    float gray = dot(scene, vec3(0.299, 0.587, 0.114));
    vec3 abyssTint = vec3(gray * 0.75, gray * 0.60, gray * 0.95);
    vec3 col = mix(scene, abyssTint, (1.0 - vignette) * 0.45);
    col *= vignette;
    
    fragColor = vec4(col, texture(InSampler, texCoord).a);
}
