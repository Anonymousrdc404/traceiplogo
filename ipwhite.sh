#!/bin/bash

# Nom du Dev: WHITE404 | Groupe: Anonymous404

while true; do
    clear

    echo -e "\e[1;35m"
    echo "████████╗██████╗  █████╗  ██████╗███████╗     ██╗      ██████╗  ██████╗  ██████╗ "
    echo "╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝     ██║     ██╔═══██╗██╔════╝ ██╔═══██╗"
    echo "   ██║   ██████╔╝███████║██║     █████╗       ██║     ██║   ██║██║  ███╗██║   ██║"
    echo "   ██║   ██╔═══╝ ██╔══██║██║     ██╔══╝       ██║     ██║   ██║██║   ██║██║   ██║"
    echo "   ██║   ██║     ██║  ██║╚██████╗███████╗     ███████╗╚██████╔╝╚██████╔╝╚██████╔╝"
    echo "   ╚═╝   ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝     ╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ "
    echo -e "\e[0m"
    
    echo -e "\e[1;36m        _________"
    echo -e "       / ======= \\"
    echo -e "      / __________\\     IP TRACKER - WHITE404"
    echo -e "     | ___________ |    Groupe: Anonymous404"
    echo -e "     | | -       | |"
    echo -e "     | |         | |    Menu:"
    echo -e "     | |_________| |      1. 🌍 Voir mon IP publique"
    echo -e "     \\=___________/       2. 🛰️  Géolocaliser une IP"
    echo -e "     / ''''''''''''\\      3. 🔧 Infos IP locales (interfaces)"
    echo -e "    / ::::::::::::: \\     4. ❌ Quitter"
    echo -e "   (_________________)\e[0m"

    read -p $'\e[1;33mCHOIX >>> \e[0m' CHOIX

    case $CHOIX in
        1)
            echo -e "\e[1;32m[+] Votre IP publique est :\e[0m"
            curl -s https://ipinfo.io/ip
            read -p $'\nAppuyez sur Entrée pour revenir au menu...'
            ;;
        2)
            read -p $'\e[1;34m[?] IP à localiser : \e[0m' IP
            echo -e "\n\e[1;36m[+] Infos pour $IP :\e[0m"
            curl -s ipinfo.io/$IP | jq .
            read -p $'\nAppuyez sur Entrée pour revenir au menu...'
            ;;
        3)
            echo -e "\e[1;34m[+] Informations IP et interfaces réseau :\e[0m"
            ip a
            echo -e "\n\e[1;34m[+] Routes :\e[0m"
            ip route
            read -p $'\nAppuyez sur Entrée pour revenir au menu...'
            ;;
        4)
            echo -e "\e[1;31m[!] Sortie du script. Merci WHITE404 ✌️\e[0m"
            exit 0
            ;;
        *)
            echo -e "\e[1;31m[X] Choix invalide. Essaie encore.\e[0m"
            sleep 2
            ;;
    esac
done
