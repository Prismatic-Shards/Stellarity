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
    // 1. Пропорции экрана
    vec2 uv = texCoord * 2.0 - 1.0;
    uv.x *= ScreenSize.x / ScreenSize.y;
    
    // 2. Дыхание краев виньетки
    float pulse = sin(GameTime * 2.0) * 0.03;
    float distance = length(uv) + pulse;
    
    // 3. Вычисление маски затемнения под Hollow Knight
    float vignette = smoothstep(0.5, 1.6, distance);
    vignette = 1.0 - vignette;
    vignette = max(vignette, 0.02);
    
    // 4. Хроматическая аберрация (с защитой от деления на ноль в центре)
    float distortionPower = smoothstep(0.3, 1.5, length(uv)) * 0.005;
    vec2 centerOffset = texCoord - 0.5;
    float centerDist = length(centerOffset);
    vec2 distortDir = centerDist > 0.0001 ? centerOffset / centerDist : vec2(0.0);
    vec2 redUV  = texCoord - distortDir * distortionPower;
    vec2 blueUV = texCoord + distortDir * distortionPower;
    
    float r = texture(InSampler, redUV).r;
    float g = texture(InSampler, texCoord).g;
    float b = texture(InSampler, blueUV).b;
    vec4 sceneColor = vec4(r, g, b, 1.0);
    
    // Финальный цвет
    fragColor = vec4(sceneColor.rgb * vignette, sceneColor.a);
}
