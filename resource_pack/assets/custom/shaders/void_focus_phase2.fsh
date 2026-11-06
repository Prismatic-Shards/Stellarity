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
    
    float cycle = fract(t * 0.9);
    float pulse = pow(1.0 - cycle, 4.0);
    float pulse2 = pow(1.0 - fract(t * 0.9 + 0.78), 7.0);
    float heartbeat = pulse * 0.15 + pulse2 * 0.06;
    
    float tendrils = sin(angle * 5.0 + t * 1.1) * 0.07 
                   + cos(angle * 8.0 - t * 1.6) * 0.04 
                   + sin(angle * 12.0 + t * 0.6) * 0.02;
    
    float dist = r + heartbeat + tendrils;
    float innerR = clamp(0.48 - heartbeat * 0.20, 0.22, 0.65);
    float outerR = clamp(1.30 - heartbeat * 0.35, 0.85, 1.60);
    float v = smoothstep(innerR, outerR, dist);
    float vignette = clamp(1.0 - v, 0.08, 1.0);
    
    vec2 dir = r > 0.001 ? uv / r : vec2(0.0);
    float pinch = smoothstep(1.3, 0.2, r) * (0.006 + heartbeat * 0.012);
    vec2 baseCoord = texCoord - dir * pinch;
    
    float split = (0.0035 + heartbeat * 0.009) * (1.0 - vignette * 0.6);
    float red = texture(InSampler, baseCoord - dir * split).r;
    float green = texture(InSampler, baseCoord).g;
    float blue = texture(InSampler, baseCoord + dir * split).b;
    vec3 scene = vec3(red, green, blue);
    
    float gray = dot(scene, vec3(0.299, 0.587, 0.114));
    vec3 abyssTint = vec3(gray * 0.70, gray * 0.35, gray * 0.95);
    vec3 col = mix(scene, abyssTint, (1.0 - vignette) * 0.75);
    col *= vignette;
    
    fragColor = vec4(col, texture(InSampler, texCoord).a);
}
