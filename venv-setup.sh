#!/bin/bash
sudo apt install python-pip
pip install virtualenv virtualenvwrapper
mkdir ~/.virtualenvs
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7" >> ~/.bash_profile
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bash_profile
echo "source ~/.local/bin/virtualenvwrapper.sh" >> ~/.bash_profile && source ~/.bash_profile
