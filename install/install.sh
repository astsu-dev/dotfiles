#!/usr/bin/env bash

./base.sh
./laptop.sh

# Link config files
#
# Alacritty
ln -sf ~/dotfiles/.config/alacritty ~/.config/alacritty
# bat
ln -sf ~/dotfiles/.config/bat ~/.config/bat
# btop
mkdir -p ~/.config/btop/themes &&
  ln -sf ~/dotfiles/.config/btop/themes ~/.config/btop/themes
# fish
mkdir -p ~/.config/fish/mythemes &&
  ln -sf ~/dotfiles/.config/fish/mythemes ~/.config/fish/mythemes &&
  ln -sf ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
# git
ln -sf ~/dotfiles/.config/git ~/.config/git
# mako
ln -sf ~/dotfiles/.config/mako ~/.config/mako
# mpv
ln -sf ~/dotfiles/.config/mpv ~/.config/mpv
# OBS
mkdir -p ~/.config/obs-studio/themes &&
  ln -sf ~/dotfiles/.config/obs-studio/themes ~/.config/obs-studio/themes
# Rofi
ln -sf ~/dotfiles/.config/rofi ~/.config/rofi
# scripts
ln -sf ~/dotfiles/.config/scripts ~/.config/scripts
# Sway
ln -sf ~/dotfiles/.config/sway ~/.config/sway
# Waybar
ln -sf ~/dotfiles/.config/waybar ~/.config/waybar
# xremap
ln -sf ~/dotfiles/.config/xremap ~/.config/xremap
# Zathura
ln -sf ~/dotfiles/.config/zathura ~/.config/zathura
#
# Wallpapers
ln -sf ~/dotfiles/wallpapers ~/wallpapers

# cp -r ../.config ~/.config
# cp -r ../wallpapers ~
