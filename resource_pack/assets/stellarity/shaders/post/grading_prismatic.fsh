#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

vec3 rgb2hsv(vec3 c) {
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));
    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main() {
    vec4 src = texture(InSampler, texCoord);
    vec3 hsv = rgb2hsv(src.rgb);
    
    float diffCyan = min(abs(hsv.x - 0.50), 1.0 - abs(hsv.x - 0.50));
    float diffPink = min(abs(hsv.x - 0.88), 1.0 - abs(hsv.x - 0.88));
    float affinity = max(1.0 - smoothstep(0.0, 0.22, diffCyan), 1.0 - smoothstep(0.0, 0.22, diffPink));
    
    hsv.y = clamp(hsv.y + affinity * 0.42 + 0.05, 0.0, 1.0);
    vec3 graded = hsv2rgb(hsv);
    graded = mix(graded, graded * vec3(0.96, 1.05, 1.08), 0.16);
    
    fragColor = vec4(graded, src.a);
}
