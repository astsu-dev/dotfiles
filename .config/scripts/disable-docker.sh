#!/usr/bin/env bash
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
systemctl stop docker docker.socket
nmcli con down docker0
