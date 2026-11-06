#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;
uniform sampler2D InDepthSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform PolyGlobals {
    mat4 PolyProjMat;
    mat4 PolyModelViewMat;
    float PolySunAngle;
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

void main() {
    vec4 baseColor = texture(InSampler, texCoord);
    vec3 scene = baseColor.rgb;
    
    float depth = texture(InDepthSampler, texCoord).r;
    bool isSky = (depth >= 0.999) || (depth <= 0.0001);
    if (!isSky) {
        fragColor = baseColor;
        return;
    }
    
    vec4 clip = vec4(texCoord * 2.0 - 1.0, 1.0, 1.0);
    vec4 view = inverse(PolyProjMat) * clip;
    view /= view.w;
    vec3 worldDir = normalize((inverse(PolyModelViewMat) * vec4(view.xyz, 0.0)).xyz);
    
    if (worldDir.y <= 0.06) {
        fragColor = baseColor;
        return;
    }
    
    float zenith = smoothstep(0.06, 0.42, worldDir.y);
    float t = GameTime * 0.08;
    
    vec2 p = worldDir.xz / (worldDir.y + 0.35);
    
    float w1 = sin(p.x * 2.8 + t * 0.9) * cos(p.y * 2.2 - t * 0.7);
    float w2 = sin(p.x * 5.4 - t * 1.4 + w1 * 1.5) * cos(p.y * 4.6 + t * 1.1);
    float curtain1 = pow(clamp(w1 * 0.5 + 0.5, 0.0, 1.0), 2.2);
    float curtain2 = pow(clamp(w2 * 0.5 + 0.5, 0.0, 1.0), 3.0);
    
    float rayAngle = atan(worldDir.z, worldDir.x);
    float rays = sin(rayAngle * 24.0 + sin(worldDir.y * 14.0 + t * 2.0)) * 0.5 + 0.5;
    
    vec3 green = vec3(0.12, 0.95, 0.62);
    vec3 violet = vec3(0.72, 0.28, 0.98);
    vec3 cyan = vec3(0.20, 0.88, 1.00);
    
    vec3 color1 = mix(green, cyan, clamp(worldDir.y * 1.5, 0.0, 1.0));
    vec3 color2 = mix(violet, cyan, clamp(curtain2, 0.0, 1.0));
    
    float intensity = (curtain1 * 0.65 + curtain2 * 0.75) * (0.6 + 0.4 * rays) * zenith;
    intensity = clamp(intensity, 0.0, 0.92);
    
    vec3 aurora = mix(color1, color2, clamp(curtain2 * 1.2, 0.0, 1.0)) * intensity;
    
    scene += aurora * 1.25;
    fragColor = vec4(scene, baseColor.a);
}
