#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec4 src = texture(InSampler, texCoord);
    vec3 col = src.rgb;
    
    vec2 uv = texCoord - 0.5;
    float dist = length(uv);
    float vignette = smoothstep(0.35, 0.78, dist);
    
    vec3 acidTint = vec3(0.85, 1.15, 0.95);
    vec3 toxicHaze = vec3(0.08, 0.78, 0.58);
    
    col = mix(col * acidTint, toxicHaze, 0.18);
    col = mix(col, vec3(0.04, 0.35, 0.28), vignette * 0.42);
    
    fragColor = vec4(col, src.a);
}
