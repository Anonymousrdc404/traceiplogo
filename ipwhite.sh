#!/bin/bash

# Dev: WHITE404 | Anonymous404

while true; do
    clear

    echo -e "\e[1;95m"
    cat << "EOF"
████████╗██████╗  █████╗  ██████╗███████╗     ██╗      ██████╗  ██████╗  ██████╗ 
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝     ██║     ██╔═══██╗██╔════╝ ██╔═══██╗
   ██║   ██████╔╝███████║██║     █████╗       ██║     ██║   ██║██║  ███╗██║   ██║
   ██║   ██╔═══╝ ██╔══██║██║     ██╔══╝       ██║     ██║   ██║██║   ██║██║   ██║
   ██║   ██║     ██║  ██║╚██████╗███████╗     ███████╗╚██████╔╝╚██████╔╝╚██████╔╝
   ╚═╝   ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝     ╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ 
EOF
    echo -e "\e[0m\e[1;36m               [✦] TOOL DE RESEAU | CODED BY WHITE404 ✦\e[0m"
    echo -e "\e[1;97m═════════════════════════════════════════════════════════════════════\e[0m"
    echo -e "\e[1;32m[1] Voir mon IP publique"
    echo -e "[2] Localiser une IP"
    echo -e "[3] Interfaces et IP locales"
    echo -e "[4] WHOIS sur IP ou domaine"
    echo -e "[5] PING une cible"
    echo -e "[6] Traceroute"
    echo -e "[7] Scan de ports rapide (nmap)"
    echo -e "[8] Quitter\e[0m"
    echo -e "\e[1;97m═════════════════════════════════════════════════════════════════════\e[0m"
    
    read -p $'\e[1;33mCHOIX >>> \e[0m' CHOIX

    case $CHOIX in
        1)
            echo -e "\n\e[1;36m[+] IP publique :\e[0m"
            curl -s https://ipinfo.io/ip
            read -p $'\nAppuyez sur Entrée pour continuer...'
            ;;
        2)
            read -p $'\e[1;34m[?] IP à localiser : \e[0m' IP
            echo -e "\n\e[1;36m[+] Géolocalisation via ipinfo.io :\e[0m"
            curl -s ipinfo.io/$IP | jq .
            read -p $'\nAppuyez sur Entrée...'
            ;;
        3)
            echo -e "\n\e[1;36m[+] Interfaces réseau :\e[0m"
            ip a
            echo -e "\n\e[1;36m[+] Routes :\e[0m"
            ip route
            read -p $'\nEntrée pour retour...'
            ;;
        4)
            read -p $'\e[1;34m[?] Domaine ou IP : \e[0m' HOST
            echo -e "\n\e[1;36m[+] WHOIS info :\e[0m"
            whois $HOST | head -n 30
            read -p $'\nEntrée pour retour...'
            ;;
        5)
            read -p $'\e[1;34m[?] Hôte à ping : \e[0m' PING
            echo -e "\n\e[1;36m[+] Résultat :\e[0m"
            ping -c 4 $PING
            read -p $'\nEntrée pour retour...'
            ;;
        6)
            read -p $'\e[1;34m[?] Hôte pour traceroute : \e[0m' TRG
            traceroute $TRG
            read -p $'\nEntrée pour retour...'
            ;;
        7)
            read -p $'\e[1;34m[?] IP ou domaine à scanner : \e[0m' TGT
            echo -e "\n\e[1;36m[+] Scan des 1000 ports communs...\e[0m"
            nmap -T4 $TGT
            read -p $'\nEntrée pour retour...'
            ;;
        8)
            echo -e "\e[1;31m[!] Merci d’avoir utilisé TRACE LOC. À bientôt, h4ck3r 👻\e[0m"
            exit 0
            ;;
        *)
            echo -e "\e[1;31m[X] Choix invalide.\e[0m"
            sleep 2
            ;;
    esac
done
