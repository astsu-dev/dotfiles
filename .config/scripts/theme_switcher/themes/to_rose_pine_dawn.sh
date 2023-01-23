#!/usr/bin/env bash

# Alacritty
sed -i "s|themes/.\+|themes/rose-pine-dawn.yml|" ~/.config/alacritty/alacritty.yml

# Sway
sed -i "s|include colorschemes/.\+|include colorschemes/rose-pine-dawn|" ~/.config/sway/config

# Waybar
sed -i 's|"themes/.\+"|"themes/rose-pine-dawn.css"|' ~/.config/waybar/style.css

# Wallpaper
cp ~/wallpapers/leaf-rose-pine-dawn.png ~/wallpapers/wallpaper.png

# fish
cp ~/.config/fish/mythemes/rose-pine-dawn.fish ~/.config/fish/conf.d/theme.fish

# AstroNvim
sed -i 's|colorscheme = ".\+"|colorscheme = "catppuccin-latte"|' ~/.config/nvim/lua/user/init.lua

# mako
cp ~/.config/mako/rose-pine-dawn ~/.config/mako/config

# rofi
sed -i 's|colors/.\+"|colors/rose-pine-dawn.rasi"|' ~/.config/rofi/launcher/config.rasi &&
  sed -i 's|colors/.\+"|colors/rose-pine-dawn.rasi"|' ~/.config/rofi/powermenu/config.rasi
  sed -i 's|colors/.\+"|colors/rose-pine-dawn.rasi"|' ~/.config/rofi/theme_switcher/config.rasi

# bat
sed -i 's/--theme=".\+"/--theme="Catppuccin-latte"/' ~/.config/bat/config

# Zathura
sed -i "s|include themes/.\+|include themes/rose-pine-dawn|" ~/.config/zathura/zathurarc

# Reload configs
makoctl reload
swaymsg reload
