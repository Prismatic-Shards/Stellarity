#version 330
#extension GL_ARB_separate_shader_objects : require

layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};

uniform sampler2D Sampler0;

layout(location = 0) in vec2 texCoord0;
layout(location = 1) in vec4 vertexColor;
layout(location = 2) in vec3 skyDirection;
layout(location = 3) flat in int endSkyGeometry;

layout(location = 0) out vec4 fragColor;

const float STAR_STRENGTH = 0.55;
const float STAR_DENSITY = 110.0;

float hash31(vec3 p) {
    p = fract(p * 0.1031);
    p += dot(p, p.yzx + 33.33);
    return fract((p.x + p.y) * p.z);
}

vec3 getStarColor(float seed) {
    float pick = fract(seed * 23.45);
    if (pick < 0.35) {
        return vec3(0.85, 0.90, 1.0);
    } else if (pick < 0.65) {
        return vec3(0.95, 0.80, 1.0);
    } else if (pick < 0.85) {
        return vec3(0.75, 0.95, 1.0);
    } else {
        return vec3(1.0, 0.95, 0.85);
    }
}

vec4 starField(vec3 direction) {
    vec3 a = abs(direction);
    vec2 uv;
    float face;
    if (a.x >= a.y && a.x >= a.z) {
        uv = direction.yz / a.x;
        face = direction.x > 0.0 ? 1.0 : 2.0;
    } else if (a.y >= a.z) {
        uv = direction.xz / a.y;
        face = direction.y > 0.0 ? 3.0 : 4.0;
    } else {
        uv = direction.xy / a.z;
        face = direction.z > 0.0 ? 5.0 : 6.0;
    }

    vec2 grid = uv * STAR_DENSITY;
    vec2 cell = floor(grid);
    float seed = hash31(vec3(cell, face * 29.0));

    vec2 center = vec2(
        hash31(vec3(cell, face * 31.0)),
        hash31(vec3(cell, face * 37.0))
    ) * 0.6 + 0.2;

    float radius = mix(0.040, 0.115, seed);
    vec2 delta = fract(grid) - center;
    float distanceToStar = length(delta);

    float aa = max(length(fwidth(grid)) * 0.32, 0.012);
    float point = 1.0 - smoothstep(max(0.0, radius - aa), radius + aa, distanceToStar);

    vec3 camRight = vec3(ModelViewMat[0][0], ModelViewMat[1][0], ModelViewMat[2][0]);
    vec3 camUp = vec3(ModelViewMat[0][1], ModelViewMat[1][1], ModelViewMat[2][1]);
    float viewAngle = dot(camRight, vec3(1.11, 2.22, 3.33)) + dot(camUp, vec3(4.44, 5.55, 6.66));
    float twinkle = 0.65 + 0.35 * sin(seed * 97.0 + viewAngle * 3.5);

    float edgeFade = 1.0 - smoothstep(0.94, 1.0, max(abs(uv.x), abs(uv.y)));
    float vis = point * step(0.9978, seed) * twinkle * edgeFade;

    return vec4(getStarColor(seed), vis);
}

void main() {
    vec4 texel = texture(Sampler0, texCoord0);
    if (endSkyGeometry == 0 || texel.g > 0.003922 || texel.r < 0.8 || texel.b < 0.99) {
        vec4 color = texel * vertexColor;
        if (color.a == 0.0) {
            discard;
        }
        fragColor = color * ColorModulator;
        return;
    }

    vec3 dir = normalize(skyDirection);

    vec3 deepZenith = vec3(0.018, 0.006, 0.032);
    vec3 horizonGlow = vec3(0.075, 0.018, 0.115);

    float horizon = exp(-pow(dir.y / 0.26, 2.0));
    float lowGlow = exp(-pow((dir.y + 0.10) / 0.38, 2.0));
    float hazeMask = clamp(horizon * 0.85 + lowGlow * 0.32, 0.0, 1.0);

    vec3 skyColor = mix(deepZenith, horizonGlow, hazeMask);

    float voidFade = smoothstep(-0.85, -0.15, dir.y);
    skyColor *= mix(0.18, 1.0, voidFade);

    float starHorizonMask = smoothstep(-0.04, 0.15, dir.y);
    vec4 stars = starField(dir);
    skyColor += stars.rgb * (stars.a * starHorizonMask * STAR_STRENGTH);

    float threshold = fract(52.9829189 * fract(dot(gl_FragCoord.xy, vec2(0.06711056, 0.00583715))));
    float dither = (threshold - 0.5) / 255.0;

    fragColor = vec4(skyColor + vec3(dither), 1.0);
}
