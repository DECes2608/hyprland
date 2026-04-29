#version 300 es
precision mediump float;
in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec4 color = texture(tex, v_texcoord);

    // 1. Doygunluk (Saturation) - Mevcut ayarın
    vec3 grey = vec3(dot(color.rgb, vec3(0.299, 0.587, 0.114)));
    float saturation = 1.6;
    color.rgb = mix(grey, color.rgb, saturation);

    // 2. Siyah Düzeltme (Mavi Kaymasını Engelleme)
    // Sadece çok karanlık pikselleri hedef alıyoruz
    float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    float darkFactor = smoothstep(0.12, 0.0, luma);

    // Karanlık bölgelerdeki maviyi ve az miktarda yeşili kırpıyoruz
    // Bu sayede o "mavi/gri" parlama gider, siyahlar daha nötr durur
    color.b -= color.b * darkFactor * 0.50;
    color.g -= color.g * darkFactor * 0.10;

    fragColor = color;
}
