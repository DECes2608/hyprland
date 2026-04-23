#version 300 es
precision mediump float;
in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec4 color = texture(tex, v_texcoord);
    vec3 grey = vec3(dot(color.rgb, vec3(0.299, 0.587, 0.114)));
    float saturation = 2.0;
    color.rgb = mix(grey, color.rgb, saturation);
    fragColor = color;
}
