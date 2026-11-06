#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform OutlineConfig {
    float InnerAlpha;
    float Width;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

bool isRadiantMark(vec3 c) {
    float maxC = max(c.r, max(c.g, c.b));
    float minC = min(c.r, min(c.g, c.b));
    float sat = maxC - minC;
    return sat > 0.25;
}

void main() {
    vec2 oneTexel = Width / InSize;

    vec4 center = texture(InSampler, texCoord);
    vec4 left  = texture(InSampler, texCoord - vec2(oneTexel.x, 0.0));
    vec4 right = texture(InSampler, texCoord + vec2(oneTexel.x, 0.0));
    vec4 up    = texture(InSampler, texCoord - vec2(0.0, oneTexel.y));
    vec4 down  = texture(InSampler, texCoord + vec2(0.0, oneTexel.y));

    if (center.a < 0.1) {
        if (left.a > 0.1) center.rgb = left.rgb;
        else if (right.a > 0.1) center.rgb = right.rgb;
        else if (up.a > 0.1) center.rgb = up.rgb;
        else if (down.a > 0.1) center.rgb = down.rgb;
    }

    float leftDiff  = abs(center.a - left.a);
    float rightDiff = abs(center.a - right.a);
    float upDiff    = abs(center.a - up.a);
    float downDiff  = abs(center.a - down.a);
    
    float targetInnerAlpha = isRadiantMark(center.rgb) ? InnerAlpha : 0.0;
    
    float total = clamp(leftDiff + rightDiff + upDiff + downDiff, targetInnerAlpha, 1.0);

    fragColor = vec4(center.rgb, total * center.a);
}
