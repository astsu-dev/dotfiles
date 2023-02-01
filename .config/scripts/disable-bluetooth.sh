#!/usr/bin/env bash
systemctl stop bluetooth
sudo rfkill block bluetooth
