#version 450

layout(set = 0, binding = 0) buffer VertexBuffer {
    vec2 position;
    vec3 color;
} vertices[];

layout(location = 0) out vec4 fragColor;

void main() {
    fragColor = vec4(vertices[gl_VertexIndex].color, 1.0);
}
