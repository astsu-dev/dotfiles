#!/usr/bin/env bash
sudo rfkill unblock bluetooth
systemctl start bluetooth
