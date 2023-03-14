#!/usr/bin/env bash

# Alacritty
sed -i "s|themes/.\+|themes/catppuccin-macchiato.yml|" ~/.config/alacritty/alacritty.yml

# Sway
sed -i "s|include colorschemes/.\+|include colorschemes/macchiato|" ~/.config/sway/config

# Waybar
sed -i 's|"themes/.\+"|"themes/catppuccin-macchiato.css"|' ~/.config/waybar/style.css

# Wallpaper
cp ~/wallpapers/leaf-catppuccin-macchiato-overlay1.png ~/wallpapers/wallpaper.png

# fish
cp ~/.config/fish/mythemes/catppuccin-macchiato.fish ~/.config/fish/conf.d/theme.fish

# AstroNvim
sed -i 's|colorscheme = ".\+"|colorscheme = "catppuccin-macchiato"|' ~/.config/nvim/lua/user/init.lua

# mako
cp ~/.config/mako/catppuccin-macchiato ~/.config/mako/config

# rofi
sed -i 's|colors/.\+"|colors/catppuccin-macchiato.rasi"|' ~/.config/rofi/launcher/config.rasi &&
  sed -i 's|colors/.\+"|colors/catppuccin-macchiato.rasi"|' ~/.config/rofi/powermenu/config.rasi
  sed -i 's|colors/.\+"|colors/catppuccin-macchiato.rasi"|' ~/.config/rofi/theme_switcher/config.rasi

# bat
sed -i 's/--theme=".\+"/--theme="Catppuccin-macchiato"/' ~/.config/bat/config

# Zathura
sed -i "s|include themes/.\+|include themes/catppuccin-macchiato|" ~/.config/zathura/zathurarc

# Reload configs
makoctl reload
swaymsg reload
