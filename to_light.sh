#!/usr/bin/env bash

# Waybar
sed -i 's/macchiato.css/latte.css/' ~/.config/waybar/style.css

# Wallpaper
cp ~/wallpapers/ghost-carrot-catppuccin-latte.png ~/wallpapers/wallpaper.png

# Sway
sed -i 's/include themes\/macchiato/include themes\/latte/' ~/.config/sway/config && swaymsg reload

# kitty
# sed -i 's/include themes\/macchiato.conf/include themes\/latte.conf/' ~/.config/kitty/kitty.conf

# Alacritty
sed -i 's/colors: \*macchiato/colors: \*latte/' ~/.config/alacritty/themes/catppuccin.yml

# fish
cp ~/.config/fish/mythemes/latte.fish ~/.config/fish/conf.d/theme.fish

# # LunarVim
# sed -i 's/catppuccin-macchiato/catppuccin-latte/' ~/.config/lvim/config.lua
 
# AstroNvim
sed -i 's/catppuccin-macchiato/catppuccin-latte/' ~/.config/nvim/lua/user/init.lua

# mako
cp ~/.config/mako/latte ~/.config/mako/config && makoctl reload

# wofi
# cp ~/.config/wofi/themes/latte.css ~/.config/wofi/style.css

# rofi
sed -i 's/macchiato/latte/' ~/.config/rofi/launcher/config.rasi && sed -i 's/macchiato/latte/' ~/.config/rofi/powermenu/config.rasi

# bat
sed -i 's/Catppuccin-macchiato/Catppuccin-latte/' ~/.config/bat/config

# Zathura
sed -i 's/catppuccin-macchiato/catppuccin-latte/' ~/.config/zathura/zathurarc
