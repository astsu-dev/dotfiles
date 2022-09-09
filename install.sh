sudo pacman -Sy \
	mesa libva-mesa-driver mesa-vdpau \
	pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol \
	polkit polkit-gnome \
	xorg-xwayland sway swaybg swaylock waybar rofi mako \
	otf-font-awesome ttf-fira-mono ttf-jetbrains-mono ttf-nerd-fonts-symbols-2048-em noto-fonts-emoji \
	xdg-desktop-portal xdg-desktop-portal-wlr xdg-utils \
	fish alacritty btrfs-progs flatpak \
	btop ranger thunar tumbler slurp grim bat \
	zip unzip openssh git mpv jq feh inetutils

# mesa - video driver
# libva-mesa-driver mesa-vdpau - hardware acceleration
# pipewire pipewire-alsa pipewire-pulse pipewire-jack - audio
# pavucontrol - gui for controlling audio
# polkit polkit-gnome - policy agent, policy agent gui
# sway swaybg swaylock - wm packages
# waybar - bar
# rofi - launcher
# mako - notifications daemon
# otf-font-awesome ttf-fira-mono ttf-jetbrains-mono ttf-nerd-fonts-symbols, noto-fonts-emoji - fonts
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

flatpak install flathub org.mozilla.firefox com.github.Eloston.UngoogledChromium org.telegram.desktop com.github.tchx84.Flatseal

# Copy config files
cp -r .config ~/.config
cp -r wallpapers ~/wallpapers
