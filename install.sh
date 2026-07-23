#!/bin/bash

GREEN='\033;32m'
YELLOW='\033;33m'
RED='\033;31m'
NC='\033[0m'

echo -e "${YELLOW}Установка утилит и dotfiles...${NC}"

# Список утилит для официального репозитория
PACKAGESPACMAN=(
    "i3-wm" "rofi" "udiskie" "udisks2" "polybar" 
    "wget" "kitty" "curl" "maim" "feh" 
    "xclip" "fastfetch" "xorg-xsetroot" "paru"
)

# Список AUR пакетов
PACKAGESPARU=(
    "picom-ftlabs-git"
)

# 1. Системное обновление и установка из pacman (требует sudo)
echo -e "${YELLOW}Обновление pacman и установка официальных пакетов...${NC}"
sudo pacman -Syu --noconfirm

for package in "${PACKAGESPACMAN[@]}"; do
    echo "Установка $package из pacman..."
    sudo pacman -S "$package" --noconfirm
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $package установлен${NC}"
    else
        echo -e "${RED}✗ Ошибка при установке $package${NC}"
    fi
done

# 2. Обновление и установка из AUR через paru (БЕЗ sudo)
echo -e "${YELLOW}Обновление paru и установка AUR-пакетов...${NC}"
paru -Syu --noconfirm

for package in "${PACKAGESPARU[@]}"; do
    echo "Установка $package из AUR..."
    paru -S "$package" --noconfirm
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $package установлен${NC}"
    else
        echo -e "${RED}✗ Ошибка при установке $package${NC}"
    fi
done

# 3. Копирование обоев и конфигурации в домашнюю директорию пользователя
echo -e "${YELLOW}Копирование обоев...${NC}"
mkdir -p "$HOME/wallpapers"
cp wall.jpg "$HOME/wallpapers/"

echo -e "${YELLOW}Копирование конфигов...${NC}"
mkdir -p "$HOME/.config"
cp -r dunst polybar picom i3 kitty rofi "$HOME/.config/"

echo -e "${GREEN}✓ Все готово!${NC}"
