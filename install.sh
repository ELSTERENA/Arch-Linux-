#!/bin/bash

echo "Копирую конфиги..."
cp -r config/* ~/.config/
cp -r local/share/* ~/.local/share/
cp -r fonts/* ~/.fonts/

echo "Обновляю шрифты..."
fc-cache -fv

echo "Перезапуск компонентов..."
pkill waybar && waybar &
pkill mako && mako &
hyprctl reload

echo "✅ Установка завершена!"
