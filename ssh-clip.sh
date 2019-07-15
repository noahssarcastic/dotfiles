#!/bin/bash
sudo apt install xclip
ssh-keygen -t ed25519 -C "$1"
xclip -sel clip < ~/.ssh/id_ed25519.pub
