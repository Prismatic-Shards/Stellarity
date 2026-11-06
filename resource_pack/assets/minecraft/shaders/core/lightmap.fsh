#version 330
#extension GL_ARB_separate_shader_objects : require

layout(std140) uniform LightmapInfo {
    float SkyFactor;
    float BlockFactor;
    float NightVisionFactor;
    float DarknessScale;
    float BossOverlayWorldDarkeningFactor;
    float BrightnessFactor;
    vec3 BlockLightTint;
    vec3 SkyLightColor;
    vec3 AmbientColor;
    vec3 NightVisionColor;
} lightmapInfo;

layout(location = 0) in vec2 texCoord;

layout(location = 0) out vec4 fragColor;

float get_brightness(float level) {
    return level / (4.0 - 3.0 * level);
}

vec3 notGamma(vec3 color) {
    float maxComponent = max(max(color.x, color.y), color.z);
    float maxInverted = 1.0f - maxComponent;
    float maxScaled = 1.0f - maxInverted * maxInverted * maxInverted * maxInverted;
    return color * (maxScaled / maxComponent);
}

float parabolicMixFactor(float level) {
    return (2.0 * level - 1.0) * (2.0 * level - 1.0);
}

void main() {
    float block_level = floor(texCoord.x * 16.0) / 15.0;
    float sky_level = floor(texCoord.y * 16.0) / 15.0;

    float block_brightness = get_brightness(block_level) * lightmapInfo.BlockFactor;
    float sky_brightness = get_brightness(sky_level) * lightmapInfo.SkyFactor;

    vec3 nightVisionColor = lightmapInfo.NightVisionColor * lightmapInfo.NightVisionFactor;

    vec3 ambient = lightmapInfo.AmbientColor;
    float ambLuma = dot(ambient, vec3(0.2126, 0.7152, 0.0722));
    if (ambLuma > 0.35) {
        float flashStrength = smoothstep(0.35, 0.95, ambLuma);
        vec3 cosmicAmbient = vec3(0.62, 0.38, 0.88);
        ambient = mix(ambient, cosmicAmbient * ambLuma, flashStrength * 0.70);
    }

    vec3 color = max(ambient, nightVisionColor);

    vec3 skyLight = lightmapInfo.SkyLightColor;
    float skyLuma = dot(skyLight, vec3(0.2126, 0.7152, 0.0722));
    if (skyLuma > 0.45) {
        float flashStrength = smoothstep(0.45, 0.95, skyLuma);
        vec3 cosmicSky = vec3(0.65, 0.42, 0.92);
        skyLight = mix(skyLight, cosmicSky * skyLuma, flashStrength * 0.65);
    }

    color += skyLight * sky_brightness;

    vec3 BlockLightColor = mix(lightmapInfo.BlockLightTint, vec3(1.0), 0.9 * parabolicMixFactor(block_level));
    color += BlockLightColor * block_brightness;

    color = mix(color, color * vec3(0.7, 0.6, 0.6), lightmapInfo.BossOverlayWorldDarkeningFactor);
    color = color - vec3(lightmapInfo.DarknessScale);
    color = clamp(color, 0.0, 1.0);
    vec3 notGammaColor = notGamma(color);
    color = mix(color, notGammaColor, lightmapInfo.BrightnessFactor);

    fragColor = vec4(color, 1.0);
}
