#!/bin/bash

sudo pacman -Sy \
  light \
  bluez bluez-utils blueman \
  sof-firmware

# light - brigthness control
# bluez - bluetooth
# bluez-utils - bluetooth utils
# blueman - bluetooth gui
# sof-firmware - audio drivers

systemctl enable bluetooth.service
