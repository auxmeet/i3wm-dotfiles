#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}Установка утилит и dotfiles...${NC}"

# Список утилит для установки
PACKAGESPACMAN=(
    "i3"
    "rofi"
    "udiskie"
    "udisks2"
    "polybar"
    "wget"
    "kitty"
    "curl"
    "maim"
    "feh"
    "xclip"
    "fastfetch"
    "xorg-xsetroot"
    "paru"
)

# Обновление пакетов
echo -e "${YELLOW}Обновление pacman...${NC}"
pacman -Syu --noconfirm

# Установка утилит
echo -e "${YELLOW}Установка утилит...${NC}"
for package in "${PACKAGESPACMAN[@]}"; do
    echo "Установка $package..."
    pacman -S "$package" --noconfirm
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $package установлен${NC}"
    else
        echo -e "${RED}✗ Ошибка при установке $package${NC}"
    fi
done

PACKAGESPARU=(
    "picom-ftlabs-git"
)

# Обновление пакетов
echo -e "${YELLOW}Обновление paru...${NC}"
paru -Syu --noconfirm

# Установка утилит
echo -e "${YELLOW}Установка утилиты picom-ftlabs-git и обоев${NC}"
for package in "${PACKAGESPARU[@]}"; do
    echo "Установка $package..."
    paru -S "$package" --noconfirm
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $package установлен${NC}"
    else
        echo -e "${RED}✗ Ошибка при установке $package${NC}"
    fi
done

echo -e "${YELLOW}Копирование обоев..${NC}"
mkdir -p ~/wallpapers/
cp wall.jpg ~/wallpapers/

# Копирование dotfiles
echo -e "${YELLOW}Копирование конфигов...${NC}"
cp -r dunst ~/.config/dunst/
cp -r polybar ~/.config/polybar/
cp -r picom ~/.config/picom/
cp -r i3 ~/.config/i3/
cp -r kitty ~/.config/kitty/
cp -r rofi ~/.config/rofi/
echo -e "${GREEN}✓ Все готово!${NC}"
