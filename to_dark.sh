#!/usr/bin/env bash

# Waybar
sed -i 's/latte.css/macchiato.css/' ~/.config/waybar/style.css

# Wallpaper
cp ~/wallpapers/ghost-carrot-catppuccin-macchiato.png ~/wallpapers/wallpaper.png

# Sway
sed -i 's/include themes\/latte/include themes\/macchiato/' ~/.config/sway/config && swaymsg reload

# kitty
# sed -i 's/include themes\/latte.conf/include themes\/macchiato.conf/' ~/.config/kitty/kitty.conf

# Alacritty
sed -i 's/colors: \*latte/colors: \*macchiato/' ~/.config/alacritty/themes/catppuccin.yml

# fish
cp ~/.config/fish/mythemes/macchiato.fish ~/.config/fish/conf.d/theme.fish

# # LunarVim
# sed -i 's/catppuccin-latte/catppuccin-macchiato/' ~/.config/lvim/config.lua

# AstroNvim
sed -i 's/catppuccin-latte/catppuccin-macchiato/' ~/.config/nvim/lua/user/init.lua

# mako
cp ~/.config/mako/macchiato ~/.config/mako/config && makoctl reload

# wofi
# cp ~/.config/wofi/themes/macchiato.css ~/.config/wofi/style.css

# rofi
sed -i 's/latte/macchiato/' ~/.config/rofi/launcher/config.rasi && sed -i 's/latte/macchiato/' ~/.config/rofi/powermenu/config.rasi

# bat
sed -i 's/Catppuccin-latte/Catppuccin-macchiato/' ~/.config/bat/config

# Zathura
sed -i 's/catppuccin-latte/catppuccin-macchiato/' ~/.config/zathura/zathurarc
