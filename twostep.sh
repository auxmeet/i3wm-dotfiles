#!/bin/bash

# Info
echo -e "Paru helper needed"
echo -e "Install from git or pacman"
echo -e "p = pacman g = git"
read -p "Continue? (p/g): " ans

PACKAGESPACMAN=(
    "paru"
)

# Git paru
if [[ "$ans" == "g" ]]; then
    echo -e "Script will install paru from git"
    echo -e "Installing paru..."
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
fi

# Pacman paru
if [[ "$ans" == "p" ]]; then
    echo -e "Script will install paru from pacman"
for package in "${PACKAGESPACMAN[@]}"; do
        echo "Installing $package..."
        paru -S "$package" --noconfirm --needed > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo -e "✓ $package installed"
    else
        echo -e "✗ Error while installing $package"
    fi
done

# Paru Packages
echo -e "Install picom-ftlabs-git and helium-browser-bin"
PACKAGESPARU=(
    "picom-ftlabs-git"
    "helium-browser-bin"
)

# Paru Update
echo -e "Update paru..."
paru -Syu --noconfirm --needed > /dev/null 2>&1

# Paru Install
for package in "${PACKAGESPARU[@]}"; do
    echo "Installing $package..."
    paru -S "$package" --noconfirm --needed > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo -e "✓ $package installed"
    else
        echo -e "✗ Error while installing $package"
    fi
done

# Copy wallpaper
echo -e "Copy wallpaper.."
sudo mkdir -p "$HOME/wallpapers/"
sudo cp -v wall.jpg "$HOME/wallpapers/"

# Copy dotfiles
echo -e "Copy dotfiles..."
sudo mkdir -p "$HOME/.config/"
sudo cp -r -v rofi dunst kitty picom polybar i3 fastfetch "$HOME/.config/"
echo -e "✓ All set!"

fi
