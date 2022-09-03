#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ $(dpkg-query -W -f='${Status}' zsh 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  apt-get install -y zsh
fi
