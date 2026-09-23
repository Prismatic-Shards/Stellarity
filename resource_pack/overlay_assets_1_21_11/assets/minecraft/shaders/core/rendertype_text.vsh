#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:globals.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

/* START OF STELLARITY SHADER CODE */

vec3 hsvToRgb(float h, float s, float v) {
    vec3 rgb = clamp(abs(mod(h * 6.0 + vec3(0.0, 4.0, 2.0), 6.0) - 3.0) - 1.0, 0.0, 1.0);
    return v * mix(vec3(1.0), rgb, s);
}
/* END OF STELLARITY SHADER CODE */

void main() {
	vec4 color = Color; // added: 'color' is a vector that can be changed, unlike 'Color'
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

   
	/* START OF STELLARITY SHADER CODE */
	#moj_import <stellarity:animated_text.glsl>
	/* END OF STELLARITY SHADER CODE */
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}