#!/bin/bash

#################################################################################

# Запуск скрипта:
# . ~/update.sh

#################################################################################

# Обновляем пакеты
sudo apt update
sudo apt upgrade -y

# Установка Midnight Commander
sudo apt install -y mc

# Установка curl
sudo apt install -y curl

# Установка и настройка tmux
sudo apt install -y tmux
wget -P ~/ 'https://github.com/andrey-edu/linux-settings/raw/main/.tmux.conf'

# Скачивание и настройка alias
wget -P ~/ 'https://github.com/andrey-edu/linux-settings/raw/main/.bash_aliases'
# Перезапуск .bashrc
. ~/.bashrc

# Установка git
sudo apt install -y git
# Добавление в .bashrc отображения ветки git в терминале
echo '' >> ~/.bashrc
echo 'parse_git_branch() {
     git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "' >> ~/.bashrc
# Перезапуск .bashrc
. ~/.bashrc

# Установка и настройка WireGurad
sudo apt install -y wireguard
sudo ln -s /usr/bin/resolvectl /usr/local/bin/resolvconf
