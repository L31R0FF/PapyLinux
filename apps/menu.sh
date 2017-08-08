#!/bin/bash
#################### This is the source code of PAPY-LINUX 1.0 written by L31R0FF the 08/08/2017 and released under Apache license 2.0 ####################

cols=$(tput cols)
title=" PAPY-LINUX 1.0 "
let wgth="($cols - 16) / 2"
i=0
str=""
choice=""

for ((i = 1; i <= $wgth; i++))
do
    str="$str#"
done

while true
do
    clear
    echo "$str$title$str"
    echo ""
    echo " [E]ditor"
    echo " [F]ile navigator"
    echo " [I]nternet navigator"
    echo " [T]erminal"
    echo " [P]ython IDE"
    echo " [G]ames"
    echo " [V]olume"
    echo " E[X]it to shell"
    echo " [S]hutdown"
    echo ""
    read -n1 choice

    if [ $choice = "e" ]
    then
        nano
    elif [ $choice = "f" ]
    then
        mc -bu
    elif [ $choice = "i" ]
    then
        links2 lite.qwant.com
    elif [ $choice = "t" ]
    then
        bash apps/term.sh
    elif [ $choice = "p" ]
    then
        bash apps/pyde.sh
    elif [ $choice = "g" ]
    then
        bash apps/xdos.sh
    elif [ $choice = "v" ]
    then
        alsamixer -g
    elif [ $choice = "x" ]
    then
        exit
    elif [ $choice = "s" ]
    then
        sudo shutdown -h now
    fi
done
