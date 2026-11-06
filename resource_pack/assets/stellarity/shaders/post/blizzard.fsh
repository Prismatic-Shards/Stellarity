#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform Globals {
    ivec3 CameraBlockPos;
    vec3 CameraOffset;
    vec2 ScreenSize;
    float GlintAlpha;
    float GameTime;
    int MenuBlurRadius;
    int UseRgss;
};

float hash12(vec2 p) {
    vec3 p3 = fract(vec3(p.xyx) * 0.1031);
    p3 += dot(p3, p3.yzx + 33.33);
    return fract((p3.x + p3.y) * p3.z);
}

float windStreak(vec2 uv, float speed, float scale, float t) {
    vec2 p = vec2(uv.x * scale + t * speed, uv.y * scale * 0.28 + t * speed * 0.12);
    float id = floor(p.y);
    float xOff = hash12(vec2(id, 47.19)) * 80.0;
    float streak = sin((p.x + xOff) * 6.28318) * 0.5 + 0.5;
    return pow(streak, 14.0) * smoothstep(0.2, 0.8, hash12(vec2(id, 19.31)));
}

void main() {
    vec4 base = texture(InSampler, texCoord);
    vec3 col = base.rgb;
    
    float gustTime = GameTime * 0.85;
    float fogDensity = 0.38 + 0.14 * sin(gustTime) + 0.08 * sin(gustTime * 2.3 + 1.2);
    vec3 blizzardFog = vec3(0.86, 0.93, 1.05);
    
    float w1 = windStreak(texCoord, 3.8, 16.0, GameTime);
    float w2 = windStreak(texCoord + vec2(0.35, 0.62), 5.2, 28.0, GameTime * 1.15);
    float w3 = windStreak(texCoord * 1.4, 2.8, 10.0, GameTime * 0.85);
    float windNoise = w1 * 0.45 + w2 * 0.35 + w3 * 0.20;
    
    vec2 uvDist = texCoord - 0.5;
    float r = length(uvDist);
    float frostVignette = smoothstep(0.32, 0.74, r);
    
    vec3 lumaCol = vec3(dot(col, vec3(0.299, 0.587, 0.114)));
    col = mix(col, lumaCol, 0.22);
    col *= vec3(0.92, 1.02, 1.14);
    col = mix(col, blizzardFog, fogDensity);
    col += vec3(0.92, 0.97, 1.05) * windNoise * 0.52;
    col = mix(col, vec3(0.82, 0.90, 1.0), frostVignette * 0.44);
    col = clamp(col, 0.0, 1.0);
    
    fragColor = vec4(col, base.a);
}
