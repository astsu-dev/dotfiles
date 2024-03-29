#!/usr/bin/env bash
# Base settings for pc and laptop

# Install packages
sudo pacman -Sy \
	mesa libva-mesa-driver mesa-vdpau \
	pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol \
	polkit polkit-gnome \
	xorg-xwayland sway swaybg swaylock waybar mako rofi \
	otf-font-awesome ttf-fira-mono ttf-fira-sans ttf-jetbrains-mono ttf-nerd-fonts-symbols-2048-em-mono noto-fonts-emoji \
	xdg-desktop-portal xdg-desktop-portal-wlr xdg-utils \
	fish alacritty btrfs-progs \
	btop ranger thunar tumbler slurp grim bat \
	zip unzip openssh git mpv jq feh inetutils wl-clipboard firefox chromium telegram-desktop \
  cmus zathura zathura-pdf-poppler
# mesa - video driver
# libva-mesa-driver mesa-vdpau - hardware acceleration
# pipewire pipewire-alsa pipewire-pulse pipewire-jack - audio
# pavucontrol - gui for controlling audio
# polkit polkit-gnome - policy agent, policy agent gui
# sway swaybg swaylock - wm packages
# waybar - bar
# mako - notifications daemon
# rofi - app launcher
# otf-font-awesome ttf-fira-mono ttf-fira-sans ttf-jetbrains-mono ttf-nerd-fonts-symbols, noto-fonts-emoji - fonts
# fish - shell
# alacritty - terminal
# btrfs-progs - btrfs utils
# flatpak - flatpak package manager
# btop - better htop
# ranger - tui file manager
# thunar - gui file manager
# tumbler - thunar tumbnails
# slurp grim - screenshots
# bat - better cat
# zip unzip - zip archive utils
# openssh - ssh utils
# git - control version system
# mpv - video player
# jq - json processor
# feh - image viewer
# inetutils - network utilities (hostname, telnet, ftp, etc.)
# wl-clipboard - system clipboard tools
# firefox chromium - browsers
# telegram-desktop - telegram
# cmus - tui music player
# zathura zathura-pdf-poppler - pdf viewer

# flatpak install flathub org.mozilla.firefox com.github.Eloston.UngoogledChromium org.telegram.desktop com.github.tchx84.Flatseal
# flatseal  - manage flatpak permissions

# Install yay - aur helper
git clone https://aur.archlinux.org/yay.git yay && cd yay && makepkg -si

yay -S discord hyprpicker-git
# yay -S rofi-lbonn-wayland
# hyprpicker - wayland color picker
# rofi-lbonn-wayland - rofi app runner wayland version

# Config

## Mime types
xdg-mime default org.pwmt.zathura.desktop application/pdf
xdg-mime default feh.desktop image/png
xdg-mime default feh.desktop image/jpeg
