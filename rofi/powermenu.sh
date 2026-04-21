#!/bin/bash

# Seçenekleri belirle (Menüde görünecek sıra)
option=$(printf "Lock\nExit Hyprland\nReboot\nShutdown" | rofi -dmenu -p "Session" -theme ~/.config/rofi/themes/modern-black.rasi)

# Seçime göre işlemi çalıştır
case "$option" in
    "Lock")
        hyprlock  # Kilit ekranı için hyprlock kullanıyorsan
        ;;
    "Exit Hyprland")
        hyprctl dispatch exit  # Oturumu güvenli kapatmak için
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
esac
