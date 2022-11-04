#!/bin/bash
# Base settings for pc and laptop

sudo pacman -Sy \
	mesa libva-mesa-driver mesa-vdpau \
	pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol \
	polkit polkit-gnome \
	xorg-xwayland sway swaybg swaylock waybar mako \
	otf-font-awesome ttf-fira-mono ttf-fira-sans ttf-jetbrains-mono ttf-nerd-fonts-symbols-2048-em-mono noto-fonts-emoji \
	xdg-desktop-portal xdg-desktop-portal-wlr xdg-utils \
	fish alacritty btrfs-progs \
	btop ranger thunar tumbler slurp grim bat \
	zip unzip openssh git mpv jq feh inetutils wl-clipboard firefox chromium telegram-desktop \
  cmus
# mesa - video driver
# libva-mesa-driver mesa-vdpau - hardware acceleration
# pipewire pipewire-alsa pipewire-pulse pipewire-jack - audio
# pavucontrol - gui for controlling audio
# polkit polkit-gnome - policy agent, policy agent gui
# sway swaybg swaylock - wm packages
# waybar - bar
# mako - notifications daemon
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

# flatpak install flathub org.mozilla.firefox com.github.Eloston.UngoogledChromium org.telegram.desktop com.github.tchx84.Flatseal
# flatseal  - manage flatpak permissions

# Install yay - aur helper
git clone https://aur.archlinux.org/yay.git yay && cd yay && makepkg -si

# rofi - launcher
yay -S rofi-lbonn-wayland
# rofi-lbonn-wayland - rofi app runner wayland version
# ungoogled-chromium-bin - chromium without google services
