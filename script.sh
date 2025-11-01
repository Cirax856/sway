#!/bin/bash
if [ "$EUID" -eq 0 ]; then
  echo "Do not run as root (no sudo)"
  exit 1
fi

sudo -v
while true; do sudo -n true; sleep 60; done 2>/dev/null &
KEEP_SUDO_ALIVE=$!

# sync and upgrade all packages and install apps
sudo pacman -Syyu --noconfirm ghostty firefox nvim waybar ttf-jetbrains-mono-nerd pipewire-pulse dolphin unzip

# install yay
TMP_DIR=$(mktemp -d)

git clone https://aur.archlinux.org/yay.git "$TMP_DIR"
cd "$TMP_DIR"
makepkg -si
cd ~
rm -rf "$TMP_DIR"

# install AUR apps
yes | yay -S --answerclean Yes --answerdiff None vesktop 

# install .config files and other files from repo
TMP_DIR=$(mktemp -d)

git clone --depth=1 https://github.com/Cirax856/sway.git "$TMP_DIR"

mkdir -p "$HOME/.config"
cp -r "$TMP_DIR/.config/"* "$HOME/.config/"
cp -r "$TMP_DIR/wallpaper.png" "$HOME/.config/sway/wallpaper.png"
cp -r "$TMP_DIR/.bashrc" "$HOME/.bashrc"

# clean up and finish
rm -rf "$TMP_DIR"
sudo pacman -Rns --noconfirm foot wmenu

kill "$KEEP_SUDO_ALIVE"
reboot
