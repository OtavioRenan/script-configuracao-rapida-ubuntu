#!/bin/bash

echo "NodeJs:" && node -v;
echo "#############################";
echo "Npm:" && npm -v;
echo "#############################";
echo "Typescript:" && tsc -v;
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
echo "#############################";
echo "Angular:" && ng --version;
echo "#############################";
sudo systemctl status docker;
echo "#############################";