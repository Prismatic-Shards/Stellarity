#version 330
#extension GL_ARB_separate_shader_objects : require

layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};
layout(std140) uniform Projection {
    mat4 ProjMat;
};

layout(location = 0) in vec3 Position;
layout(location = 1) in vec2 UV0;
layout(location = 2) in vec4 Color;

layout(location = 0) out vec2 texCoord0;
layout(location = 1) out vec4 vertexColor;
layout(location = 2) out vec3 skyDirection;
layout(location = 3) flat out int endSkyGeometry;

mat4 getSkyProjection() {
    vec3 rowZ = vec3(ProjMat[0][2], ProjMat[1][2], ProjMat[2][2]);
    vec3 rowW = vec3(ProjMat[0][3], ProjMat[1][3], ProjMat[2][3]);
    float depthA = -dot(rowZ, rowW) / max(dot(rowW, rowW), 0.00000001);
    float depthB = ProjMat[3][2] + depthA * ProjMat[3][3];
    mat4 skyProjection = ProjMat;
    skyProjection[3] = vec4(0.0, 0.0, depthB, 0.0);
    return skyProjection;
}

void main() {
    bool cubeCorner = all(lessThan(abs(abs(Position) - vec3(100.0)), vec3(0.002)));
    bool skyColour = all(lessThan(abs(Color - vec4(vec3(40.0 / 255.0), 1.0)), vec4(0.001)));
    bool skyUv = all(lessThan(abs(UV0 / 16.0 - round(UV0 / 16.0)), vec2(0.001)));
    endSkyGeometry = cubeCorner && skyColour && skyUv ? 1 : 0;
    skyDirection = Position;
    mat4 projection = endSkyGeometry != 0 ? getSkyProjection() : ProjMat;
    gl_Position = projection * ModelViewMat * vec4(Position, 1.0);

    texCoord0 = UV0;
    vertexColor = Color;
}
