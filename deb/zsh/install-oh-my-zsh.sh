#!/usr/bin/env bash
echo $SUDO_USER
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ $(dpkg-query -W -f='${Status}' curl 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
  apt-get install -y curl
fi

runuser -l $SUDO_USER -c 'CHSH=yes RUNZSH=no KEEP_ZSHRC=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended'

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
