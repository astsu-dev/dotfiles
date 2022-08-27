#!/usr/bin/env bash

# Waybar
sed -i 's/macchiato.css/latte_mod.css/' ~/.config/waybar/style.css
# Wallpaper
cp ~/wallpapers/ghost-carrot-catppuccin-latte.png ~/wallpapers/wallpaper.png
# Sway
sed -i 's/include themes\/macchiato/include themes\/latte/' ~/.config/sway/config && swaymsg reload
# kitty
sed -i 's/include themes\/macchiato.conf/include themes\/latte.conf/' ~/.config/kitty/kitty.conf && kitty @ set-colors --all --configured ~/.config/kitty/kitty.conf
# fish
cp ~/.config/fish/mythemes/latte.fish ~/.config/fish/conf.d/theme.fish
# LunarVim
sed -i 's/vim.g.catppuccin_flavour = "macchiato"/vim.g.catppuccin_flavour = "latte"/' ~/.config/lvim/config.lua
# mako
cp ~/.config/mako/latte ~/.config/mako/config && makoctl reload
# wofi
cp ~/.config/wofi/themes/latte.css ~/.config/wofi/style.css
# bat
sed -i 's/Catppuccin-macchiato/Catppuccin-latte/' ~/.config/bat/config
