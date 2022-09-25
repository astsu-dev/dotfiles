#!/bin/bash

sudo pacman -Sy \
  light \
  bluez bluez-utils blueman

# light - brigthness control
# bluez - bluetooth
# bluez-utils - bluetooth utils
# blueman - bluetooth gui

systemctl enable bluetooth.service
