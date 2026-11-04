#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

void main() {
    vec4 src = texture(InSampler, texCoord);
    float luminance = dot(src.rgb, vec3(0.2126, 0.7152, 0.0722));
    vec3 tint = mix(vec3(0.72, 0.48, 0.92), vec3(0.92, 0.34, 0.76), smoothstep(0.0, 0.35, luminance));
    vec3 graded = mix(src.rgb, src.rgb * tint, 0.16);
    graded += vec3(0.006, 0.001, 0.012) * (1.0 - luminance);
    fragColor = vec4(clamp(graded, 0.0, 1.0), src.a);
}
