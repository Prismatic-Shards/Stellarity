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
    vec2 uv = texCoord - 0.5;
    float dist = length(uv);
    vec2 dir = dist > 0.0001 ? uv / dist : vec2(0.0);
    float caOffset = smoothstep(0.18, 0.72, dist) * 0.007;

    float r = texture(InSampler, texCoord + dir * caOffset).r;
    float g = texture(InSampler, texCoord).g;
    float b = texture(InSampler, texCoord - dir * caOffset).b;
    vec3 col = vec3(r, g, b);

    float lum = dot(col, vec3(0.299, 0.587, 0.114));
    col = mix(col, vec3(lum), 0.35);
    col *= vec3(0.76, 0.92, 1.06);

    float vignette = smoothstep(0.22, 0.82, dist);
    vec3 edgeDark = vec3(0.02, 0.04, 0.08);
    col = mix(col, edgeDark, vignette * 0.75);

    col = pow(max(col, vec3(0.0)), vec3(1.12));

    fragColor = vec4(col, 1.0);
}
