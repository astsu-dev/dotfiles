# 🎉 astsu's Desktop Setup

## Screenshots

<img src="https://github.com/astsu-dev/dotfiles/raw/main/screenshots/catppuccin_macchiato.png">
<img src="https://github.com/astsu-dev/dotfiles/raw/main/screenshots/catppuccin_latte_mod.png">

## Details

OS - [<img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Archlinux-icon-crystal-64.svg" height="16px"> Arch Linux](https://archlinux.org/)

WM (Window Manager) - [<img src="https://swaywm.org/logo.png" height="16px" alt="Sway"> Sway](https://github.com/swaywm/sway)

Bar - [Waybar](https://github.com/Alexays/Waybar)

Terminal - [<img src="https://sw.kovidgoyal.net/kitty/_static/kitty.svg" height="16px" alt="kitty"> kitty](https://github.com/kovidgoyal/kitty)

Shell - [<img src="https://fishshell.com/docs/current/_static/fish.png" height="16px" alt="fish"> fish](https://github.com/fish-shell/fish-shell)

Launcher - [wofi](https://hg.sr.ht/~scoopta/wofi)

Editor - [<img src="https://user-images.githubusercontent.com/59826753/159940098-54284f26-f1da-4481-8b03-1deb34c57533.png" height="16px" alt="LunarVim"> LunarVim](https://github.com/LunarVim/LunarVim)

Notification Daemon - [mako](https://github.com/emersion/mako)

Color Scheme - [<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" height="16px"> Catppuccin Macchiato](https://github.com/catppuccin/catppuccin)

Fetch - [nitch](https://github.com/unxsh/nitch)

## Installation

Clone repo:

```shell
git clone https://github.com/astsu-dev/dotfiles.git && cd dotfiles
```

Install dependencies:

```shell
sudo pacman -Sy sway waybar kitty mako wofi ttf-jetbrains-mono ttf-fira-mono ttf-nerd-fonts-symbols otf-font-awesome
```

Copy configuration files:

```shell
cp -r .config/sway .config/waybar .config/kitty .config/mako .config/wofi .config
```

Wallpaper:

```shell
cp -r wallpapers ~/
```

Run:

```shell
exec sway
```

## Switch theme

To dark:

```shell
./to_dark.sh
```

To light:

```shell
./to_light.sh
```

## Thanks

I was inspired by [unixporn](https://www.reddit.com/r/unixporn) community. Thank you!)
