#!/bin/bash

cols=$(tput cols)
title=" TERM "
let wgth="($cols - 6) / 2"
i=0
str=""

for ((i = 1; i <= $wgth; i++))
do
    str="$str#"
done

setterm --foreground white --background black --store
clear
echo -e "\033[44m\033[33m$str$title$str\033[37m\033[40m"
sh
setterm --foreground yellow --background blue --store
clear