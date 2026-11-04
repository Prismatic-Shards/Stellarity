// Convert the Color to RGB that ranges from 0 to 255 with robust rounding
ivec3 colorInt = ivec3(round(Color.rgb * 255.0));

// Time variables
// GameTime in Minecraft: 1.0 = 24000 ticks.
// GameTime * 450.0 gives smooth cyclic speed ~ 3 seconds per cycle.
float cycleTime = GameTime * 450.0;
float charOffset = Position.x * 0.018 - Position.y * 0.005;
float rainbowHue = fract(cycleTime + charOffset);

float waveT = abs(fract(cycleTime * 0.5) - 0.5) * 2.0;
float slowT = abs(fract(cycleTime * 0.25) - 0.5) * 2.0;

// Colorful names
// 1. Infernal Infusion enchantment
if (colorInt == ivec3(226, 126, 19)) {
	color = vec4(hsvToRgb(rainbowHue, 0.45, 0.95), Color.a);
}
// 2. Empress drops names & Radiant Kaleidoscope (#FF76D0)
else if (colorInt == ivec3(255, 118, 208)) {
	// Full dynamic rainbow shimmer flowing across letters
	color = vec4(hsvToRgb(rainbowHue, 0.90, 1.0), Color.a);
}
// 3. Ascended Radiant Kaleidoscope (#FFD700)
else if (colorInt == ivec3(255, 215, 0)) {
	// Sacred Solar gold/amber pulsating shimmer
	vec3 goldColor = mix(vec3(1.0, 0.75, 0.05), vec3(1.0, 0.96, 0.55), waveT);
	color = vec4(goldColor, Color.a);
}
// 4. Void Strike / Void Shot / Critical Strike enchantments
else if (colorInt == ivec3(214, 0, 244)) {
	color = mix(vec4(0.70, 0.0, 0.70, Color.a), vec4(1.0, 0.0, 1.0, Color.a), waveT);
}
// 5. Dune Speed enchantment
else if (colorInt == ivec3(255, 208, 38)) {
	color = mix(vec4(0.70, 0.0, 0.70, Color.a), vec4(1.0, 0.8627, 0.0, Color.a), slowT);
}
// 6. Soul Harvest enchantment
else if (colorInt == ivec3(32, 193, 232)) {
	color = mix(vec4(0.125, 0.7569, 0.9098, Color.a), vec4(1.0, 0.4118, 0.9216, Color.a), slowT);
}
// 7. Radiant Jewel name
else if (colorInt == ivec3(201, 34, 34)) {
	color = mix(vec4(0.788, 0.133, 0.133, Color.a), vec4(1.0, 0.2235, 0.1216, Color.a), slowT);
}

// ---------------- Text shadows (approx 25% intensity) ----------------
else if (colorInt == ivec3(56, 31, 4)) {
	color = vec4(hsvToRgb(rainbowHue, 0.45, 0.95 * 0.25), Color.a);
}
else if (colorInt == ivec3(63, 29, 52)) {
	color = vec4(hsvToRgb(rainbowHue, 0.90, 0.25), Color.a);
}
else if (colorInt == ivec3(63, 53, 0)) {
	vec3 goldColor = mix(vec3(1.0, 0.75, 0.05), vec3(1.0, 0.96, 0.55), waveT) * 0.25;
	color = vec4(goldColor, Color.a);
}
else if (colorInt == ivec3(53, 0, 61)) {
	color = vec4((mix(vec4(0.70, 0.0, 0.70, Color.a), vec4(1.0, 0.0, 1.0, Color.a), waveT)).rgb * 0.25, Color.a);
}
else if (colorInt == ivec3(63, 52, 9)) {
	color = vec4((mix(vec4(0.70, 0.0, 0.70, Color.a), vec4(1.0, 0.8627, 0.0, Color.a), slowT)).rgb * 0.25, Color.a);
}
else if (colorInt == ivec3(8, 48, 58)) {
	color = vec4((mix(vec4(0.125, 0.7569, 0.9098, Color.a), vec4(1.0, 0.4118, 0.9216, Color.a), slowT)).rgb * 0.25, Color.a);
}
else if (colorInt == ivec3(50, 9, 5)) {
	color = vec4((mix(vec4(0.788, 0.133, 0.133, Color.a), vec4(1.0, 0.2235, 0.1216, Color.a), slowT)).rgb * 0.25, Color.a);
}