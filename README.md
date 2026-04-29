# Hyprland Config

---

## Temalar
- Noctalia = Ayu
- Yazı tipi = FantasqueSansM Nerd Font Mono

---

## Varsayılanlar
- Tarayıcı = LibreWolf
- Terminal = Kitty
- Ekran görüntüsü aracı = grim + slurp
- Pano = CopyQ
- Editör = Zed
- Yardımcı editör = VSCode
- Bildirim = Dunst (Noctalia kurarsanız gerek yok)
- Bar = Waybar (isteğe bağlı, Noctalia ile gelir)

---

## Gereksinimler

> **Hyprland v0.54.3 veya üzeri gereklidir.** Eski sürümlerde blok tabanlı sözdizimi çalışmaz.

### Gerekli uygulamalar
```bash
sudo pacman -S hyprshade hyprcursor hyprpaper rofi-wayland xwayland-satellite nautilus kitty xdg-desktop-portal-hyprland xdg-desktop-portal blueman
```

### İsteğe bağlı
```bash
sudo pacman -S zed code obsidian evince
yay -S librewolf-bin spotify-launcher noctalia-shell
```

---

## Kurulum

1. Repoyu klonlayın:
```bash
mkdir ~/hyrplandcf
git clone https://github.com/DECes2608/hyprland ~/hyprlandcf
```
burada hyprlandcf adında klasör oluşturup oun içine klonlama yaptırtıyorum çünkü ekstra readme gidi dosyalar .config klasöründe kötü olurdu

2. Gerekli uygulamaları kurun (yukarıdaki komutlar)

3. Hyprland'ı yeniden başlatın

---

## Config Dosyaları

| Dosya | Açıklama |
|---|---|
| `env.conf` | Ortam değişkenleri |
| `startup.conf` | Başlangıçta çalışacak uygulamalar |
| `m&i.conf` | Monitör ve giriş aygıtı ayarları |
| `look.conf` | Görsel efektler ve animasyonlar |
| `rules.conf` | Pencere kuralları |
| `basekeys.conf` | Temel kısayollar (ses, parlaklık vb.) |
| `keybinds.conf` | Uygulama kısayolları |

> Pencere kurallarını düzenlemek için uygulama class ismini öğrenmek üzere `hyprctl clients` komutunu kullanabilirsiniz.

---

## Hyprshade (Doygunluk Shader)

Shader dosyası şu konuma yerleştirilmelidir:
```
~/.config/hypr/shaders/saturation.glsl
```

---

## Nvidia

Nvidia kartı olmayanlar `env.conf` içindeki Nvidia ile ilgili satırları silebilir. Nvidia kullanıcıları kendi sistemlerine göre düzenleyebilir.

---

## Görünüm

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7123f2ce-b07d-4c87-8d7c-b24a82b4f474" />



---

## Sorularınız için

İstediğinizi sorun, elimden geldiğince yardımcı olurum.
