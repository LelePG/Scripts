#!/bin/bash

# testa se o flatpak está instalado
if ! [ -x "$(command -v flatpak)" ]; then
  echo 'Instale o Flatpack.' >&2
  exit 1
fi

if ! [ -x "$(command -v snap)" ]; then
  echo 'Instale o snap.' >&2
  exit 1
fi

echo "Iniciando a instalação..."

# Instalações via flathub
# Dev
flatpak install flathub org.octave.Octave -y
flatpak install flathub net.sonic_pi.SonicPi -y
flatpak install flathub cc.arduino.arduinoide -y
flatpak install flathub com.getpostman.Postman -y

# Social
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.telegram.desktop -y

# Graficos
flatpak install flathub nl.hjdskes.gcolor3 -y
flatpak install flathub org.flameshot.Flameshot -y
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub net.scribus.Scribus -y

# Video e Audio
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.obsproject.Studio -y

#Internet
flatpak install flathub org.deluge_torrent.deluge -y
flatpak install flathub com.stremio.Stremio -y

# Outros
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.github.phase1geo.minder -y
flatpak install flathub org.gnome.gitlab.somas.Apostrophe -y
flatpak install flathub com.github.johnfactotum.Foliate -y
flatpak install flathub nz.mega.MEGAsync -y
flatpak install flathub org.gnome.Extensions -y

# Jogos
flatpak install flathub org.supertuxproject.SuperTux -y
flatpak install flathub net.supertuxkart.SuperTuxKart -y
flatpak install flathub org.desmume.DeSmuME -y
flatpak install flathub io.mgba.mGBA -y
flatpak install flathub com.stepmania.StepMania -y

# Instalações via apt
sudo add-apt-repository ppa:lutris-team/lutris #adiciona lutris aos repositórios
sudo apt-get update
sudo apt-get install php -y
sudo apt-get install mysql-server -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install peek -y
sudo apt-get install chrome-gnome-shell -y
sudo apt-get install gparted -y
sudo apt-get install traceroute -y
sudo apt-get install unrar -y
sudo apt-get install lutris -y
sudo apt-get install lm-sensors -y
sudo apt-get install net-tools -y

# Instalações snap
sudo snap install zenkit
sudo snap install brave
sudo snap install onlyoffice-desktopeditors
sudo snap install screenkey --beta
sudo snap install mysql-workbench-community
sudo snap install chromium

# configuração do mysql server, deixei por último porque pareceu melhor
sudo mysql_secure_installation 

# Scripts adicionais
chmod +x config-git.sh
chmod +x config-vscode.sh
chmod +x config-zsh.sh
chmod +x config-node.sh
chmod +x clonando-repos.sh

echo "OS PROGRAMAS ESTÃO PRONTOS UHUUUUUU!!!"



