#!/bin/bash

sudo apt install links2 mc nano dosbox alsa-utils xorg python3

mkdir ~/apps
cp apps/menu.sh ~/menu.sh
cp apps/pyde.sh ~/apps/pyde.sh
cp apps/term.sh ~/apps/term.sh
cp apps/xdos.sh ~/apps/xdos.sh

#BASH
if [ -e '~/.bashrc' ]
then
    cat bashlines >> ~/.bashrc
else
    cp bashrc ~/.bashrc
fi

#DOSBOX
mkdir ~/DOSBOX

if [ -e '~/.dosbox' ]
then
    liste=´ls ~/.dosbox/*.conf´
    for fichier in $liste
    do
        sed s'/fullscreen=false/fullscreen=true/g' $fichier > tmp
        mv tmp $fichier
        cat doslines >> $fichier
    done
else
    mkdir ~/.dosbox
    mv dosbox-0.74.conf ~/.dosbox/dosbox-0.74.conf
fi

mkdir ~/DOSBOX/KENLAB
cp games/labfull.zip ~/DOSBOX/KENLAB/labfull.zip
unzip ~/DOSBOX/KENLAB/labfull.zip -d ~/DOSBOX/KENLAB/

mkdir ~/DOSBOX/MARIO
cp games/mario.zip ~/DOSBOX/MARIO/mario.zip
unzip ~/DOSBOX/MARIO/mario.zip -d ~/DOSBOX/MARIO/

mkdir ~/DOSBOX/SM2
cp games/smines2.zip ~/DOSBOX/SM2/smines2.zip
unzip ~/DOSBOX/SM2/smines2.zip -d ~/DOSBOX/SM2/