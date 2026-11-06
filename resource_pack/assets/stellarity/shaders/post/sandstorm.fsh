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
    float vignette = smoothstep(0.38, 0.75, dist);
    
    vec3 sandTint = vec3(1.16, 0.98, 0.76);
    vec3 dustyHaze = vec3(0.85, 0.70, 0.48);
    
    col = mix(col * sandTint, dustyHaze, 0.22);
    col = mix(col, dustyHaze * 0.72, vignette * 0.45);
    
    fragColor = vec4(col, src.a);
}
