#!/usr/bin/env bash

# Alacritty
sed -i "s|themes/.\+|themes/catppuccin-latte.yml|" ~/.config/alacritty/alacritty.yml

# Sway
sed -i "s|include colorschemes/.\+|include colorschemes/latte|" ~/.config/sway/config

# Waybar
sed -i 's|"themes/.\+"|"themes/catppuccin-latte.css"|' ~/.config/waybar/style.css

# Wallpaper
cp ~/wallpapers/ghost-carrot-catppuccin-latte.png ~/wallpapers/wallpaper.png

# fish
cp ~/.config/fish/mythemes/catppuccin-latte.fish ~/.config/fish/conf.d/theme.fish

# AstroNvim
sed -i 's|colorscheme = ".\+"|colorscheme = "catppuccin-latte"|' ~/.config/nvim/lua/user/init.lua

# mako
cp ~/.config/mako/catppuccin-latte ~/.config/mako/config

# rofi
sed -i 's|colors/.\+"|colors/catppuccin-latte.rasi"|' ~/.config/rofi/launcher/config.rasi &&
  sed -i 's|colors/.\+"|colors/catppuccin-latte.rasi"|' ~/.config/rofi/powermenu/config.rasi
  sed -i 's|colors/.\+"|colors/catppuccin-latte.rasi"|' ~/.config/rofi/theme_switcher/config.rasi

# bat
sed -i 's/--theme=".\+"/--theme="Catppuccin-latte"/' ~/.config/bat/config

# Zathura
sed -i "s|include themes/.\+|include themes/catppuccin-latte|" ~/.config/zathura/zathurarc

# Reload configs
makoctl reload
swaymsg reload
