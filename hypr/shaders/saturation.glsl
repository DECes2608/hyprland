#version 300 es
precision mediump float;
in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec4 color = texture(tex, v_texcoord);

    // 1. Doygunluk (Saturation) İşlemi
    vec3 grey = vec3(dot(color.rgb, vec3(0.299, 0.587, 0.114)));
    float saturation = 1.6;
    color.rgb = mix(grey, color.rgb, saturation);

    // 2. Mavi Işık Filtresi (Gece Modu)
    vec3 blueLightFilter = vec3(1.0, 0.85, 0.65);
    color.rgb *= blueLightFilter;

    // 3. Siyahların Maviye Kaymasını Engelleme (Black/Shadow Correction)
    // Pikselin ne kadar karanlık olduğunu ölçüyoruz (Luma değeri)
    float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));

    // Eğer piksel %15'ten daha karanlıksa devreye giren bir çarpan oluşturuyoruz
    float darkFactor = smoothstep(0.15, 0.0, luma);

    // Karanlık alanlarda mavi kanalı %60'a kadar ekstra kısıyoruz
    color.b -= color.b * darkFactor * 0.60;

    // (Opsiyonel) Eğer siyahların daha da "koyu/zifiri" görünmesini istersen aşağıdaki satırın başındaki // işaretini kaldır:
    // color.rgb -= darkFactor * 0.02;

    fragColor = color;
}
