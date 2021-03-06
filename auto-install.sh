#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend ;
sudo rm /var/cache/apt/archives/lock ;
echo "Removido as travas eventuais do apt."
## Removendo travas eventuais do apt ##

## Atualizando o repositório ##
sudo apt update
echo "Atualizado o repositório."
## Atualizando o repositório ##

## Instalando pacotes e programas do repositório deb do Ubuntu ##
sudo apt install curl wget snapd python3 build-essential libssl-dev flatpak software-properties-common apt-transport-https gnome-software-plugin-flatpak -y
echo "Instalado pacotes e programas do repositório deb do Ubuntu."
## Instalando pacotes e programas do repositório deb do Ubuntu ##


## Instalando NodeJs ##
sudo apt install nodejs
echo "Instalado o NodeJs."
## Instalando NodeJs ##

## Instalando npm ##
sudo apt install npm
echo "Instalado o npm."
## Instalando npm ##

## Instalando typescript ##
sudo npm install typescript@latest -g
echo "Instalado o typescript."
## Instalando typescript ##

## Instalando angular ##
sudo npm install -g @angular/cli
echo "Instalado o angular."
## Instalando angular ##

## Instalando git-flow ##
sudo apt install git-flow
echo "Instalado o git-flow."
## Instalando git-flow ##

## VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
echo "Instalado o VS Code."
## VS Code

## Codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium
echo "Instalado o Codium."
## Codium

## PgAdmin
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4-desktop
echo "Instalado o PgAdmin."
## PgAdmin

## Postman ## Via snap
sudo snap install postman
echo "Instalado o Postman."
## Postman ## Via snap

## Google Chrome 
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "Instalado o Google Chrome."
## Google Chrome ## Via snap

## Google Chromium ## Via snap
sudo snap install chromium
echo "Instalado o Chromium."
## Google Chromium ## Via snap

## Opera ## Via snap
sudo snap install opera
echo "Instalado o Opera."
## Opera ## Via snap

## Atualização do sistema ##
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y
echo "Atualização do sistema."
## Atualização do sistema ##

## Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-commonn
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update 
apt-cache policy docker-ce
sudo apt install docker-ce
## O comando abaixo mostra o status do docker
## sudo systemctl status docker
## sudo usermod -aG docker ${USER}
## su - ${USER}
#sudo usermod -aG docker username##
echo "Instalado o Docker."
## Docker

## Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chmod -R 777 /var/run/docker.sock
echo "Instalado o Docker-Compose."
## Docker-Compose

echo "NodeJs:" && node -v;
echo "#############################";
echo "Npm:" && npm -v;
echo "#############################";
echo "Typescript:" && tsc -v;
echo "#############################";
echo "Angular:" && ng --version;
echo "#############################";
echo "Git:" && git --version;
echo "#############################";
echo "VS Code:" && code --version;
echo "#############################";
echo "VS Codium:" && codium --version;
echo "#############################";
docker --version;
echo "#############################";
docker-compose --version;
