#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

vec3 extractGlow(vec3 c) {
    float mx = max(c.r, max(c.g, c.b));
    float mn = min(c.r, min(c.g, c.b));
    float sat = mx - mn;
    float chromaFactor = smoothstep(0.18, 0.55, sat);
    float brightFactor = smoothstep(0.35, 0.85, mx);
    float glowWeight = chromaFactor * brightFactor * 0.45;
    vec3 tinted = pow(c, vec3(1.35));
    return tinted * glowWeight;
}

void main() {
    vec4 baseColor = texture(InSampler, texCoord);
    vec3 scene = baseColor.rgb;
    
    vec2 px = 1.0 / OutSize;
    vec3 bloom = vec3(0.0);
    float offsets[4] = float[](1.5, 3.2, 5.2, 7.8);
    float weights[4] = float[](0.38, 0.28, 0.20, 0.14);
    
    for (int i = 0; i < 4; ++i) {
        float d = offsets[i];
        float w = weights[i];
        
        vec3 s1 = texture(InSampler, texCoord + vec2(px.x * d, px.y * d)).rgb;
        vec3 s2 = texture(InSampler, texCoord + vec2(-px.x * d, px.y * d)).rgb;
        vec3 s3 = texture(InSampler, texCoord + vec2(px.x * d, -px.y * d)).rgb;
        vec3 s4 = texture(InSampler, texCoord + vec2(-px.x * d, -px.y * d)).rgb;
        vec3 s5 = texture(InSampler, texCoord + vec2(px.x * d * 1.4, 0.0)).rgb;
        vec3 s6 = texture(InSampler, texCoord + vec2(-px.x * d * 1.4, 0.0)).rgb;
        vec3 s7 = texture(InSampler, texCoord + vec2(0.0, px.y * d * 1.4)).rgb;
        vec3 s8 = texture(InSampler, texCoord + vec2(0.0, -px.y * d * 1.4)).rgb;
        
        vec3 tapSum = (extractGlow(s1) +
                       extractGlow(s2) +
                       extractGlow(s3) +
                       extractGlow(s4) +
                       extractGlow(s5) +
                       extractGlow(s6) +
                       extractGlow(s7) +
                       extractGlow(s8)) * 0.125;
        bloom += tapSum * w;
    }
    
    bloom = clamp(bloom, 0.0, 0.8);
    scene += bloom * 0.40;
    scene = clamp(scene, 0.0, 1.0);
    
    fragColor = vec4(scene, baseColor.a);
}
