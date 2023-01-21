#!/usr/bin/env bash

# Current Theme
theme="$HOME/.config/rofi/theme_switcher/config.rasi"

# Options
catppuccin_macchiato=' Catppuccin Macchiato'
catppuccin_latte=' Catppuccin Latte'
rose_pine_dawn=' Rosé Pine Dawn'
yes=' Yes'
no=' No'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-mesg "Choose your theme:" \
		-theme ${theme}
}

# Confirmation CMD
confirm_cmd() {
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' \
		-theme ${theme}
}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$catppuccin_macchiato\n$catppuccin_latte\n$rose_pine_dawn" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == 'catppuccin-macchiato' ]]; then
			~/.config/scripts/theme_switcher/themes/to_catppuccin_macchiato.sh
		elif [[ $1 == 'catppuccin-latte' ]]; then
			~/.config/scripts/theme_switcher/themes/to_catppuccin_latte.sh
		elif [[ $1 == 'rose-pine-dawn' ]]; then
			~/.config/scripts/theme_switcher/themes/to_rose_pine_dawn.sh
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $catppuccin_macchiato)
		run_cmd catppuccin-macchiato
        ;;
    $catppuccin_latte)
		run_cmd catppuccin-latte
        ;;
    $rose_pine_dawn)
		run_cmd rose-pine-dawn
        ;;
esac
