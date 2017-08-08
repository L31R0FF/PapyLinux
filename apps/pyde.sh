#!/bin/sh

cols=$(tput cols)
title=" TERM "
let wgth="($cols - 9) / 2"
i=0
str=""

for ((i = 1; i <= $wgth; i++))
do
    str="$str="
done

run=true
pfile=""

while [ $run = true ]
do
    clear
    pfile=$filename
    read -p "file to edit, 'prev' for previous : " filename
    if [ $filename = "prev" ]
    then
        filename=$pfile
    fi
    nano -t $filename
    setterm --foreground white --background black --store
    clear
    echo -e "\033[44m\033[33m$str RUNNING $str\033[37m\033[40m"
    sleep "1"
    python3 $filename
    setterm --foreground yellow --background blue --store
    read -p "Quit ? (N/y) : " rep

    if [ $rep = "y" ]
    then
        clear
        exit
    fi
done