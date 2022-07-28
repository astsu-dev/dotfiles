#!/usr/bin/env bash

# Waybar
sed -i 's/latte.css/macchiato.css/' ~/.config/waybar/style.css
# Wallpaper
cp ~/wallpapers/ghost-carrot-catppuccin-macchiato.png ~/wallpapers/wallpaper.png
# Sway
sed -i 's/include themes\/latte/include themes\/macchiato/' ~/.config/sway/config && swaymsg reload
# kitty
sed -i 's/include themes\/latte.conf/include themes\/macchiato.conf/' ~/.config/kitty/kitty.conf && kitty @ set-colors --all --configured ~/.config/kitty/kitty.conf
# fish
cp ~/.config/fish/mythemes/macchiato.fish ~/.config/fish/conf.d/theme.fish
# LunarVim
sed -i 's/vim.g.catppuccin_flavour = "latte"/vim.g.catppuccin_flavour = "macchiato"/' ~/.config/lvim/config.lua
# mako
cp ~/.config/mako/macchiato ~/.config/mako/config && makoctl reload
# wofi
cp ~/.config/wofi/themes/macchiato.css ~/.config/wofi/style.css
