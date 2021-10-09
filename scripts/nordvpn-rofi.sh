#!/bin/bash

# exit when any command fails
set -e

menu() {
    rofi -dmenu -i -p "Select Options" -no-custom
}

init_menu() {
    local choices
    status=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)
    if [ "$status" = "Connected" ]; then
        choices=" Disconnect"
        printf "%b" "$choices" | menu
    else
        choices=" Hong_Kong\n Singapore\n VietNam\n United_States"
        printf "%b" "$choices" | menu
    fi
}

case "$(init_menu)" in
    " Hong_Kong")
        nordvpn connect Hong_Kong
        ;;
    " Singapore")
        nordvpn connect Singapore
        ;;
    " VietNam")
        nordvpn connect VietNam
        ;;
    " United_States")
        nordvpn connect United_States
        ;;
    " Disconnect")
        nordvpn disconnect
        ;;
    *)
        ;;
esac
