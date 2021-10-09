#!/bin/bash

# exit when any command fails
set -e

menu() {
    rofi -dmenu -i -p "Select Options" -no-custom
}

init_menu() {
    local choices
    aws_status=$(ip a | grep 10.7.0.2\/24 | wc -l)
    personal_status=$(ip a | grep 172.21.0.2\/24 | wc -l)
    choices=""
    if [ "$aws_status" = "1" ] && [ "$personal_status" = "0" ]; then
        choices=" Disconnect Amazon WebServices\n Personal"
    elif [ "$personal_status" = "1" ] && [ "$aws_status" = "0" ]; then
       choices=" Amazon WebServices\n Disconnect Personal"
    elif [ "$personal_status" = "1" ] && [ "$aws_status" = "1" ]; then
       choices=" Disconnect Amazon WebServices\n Disconnect Personal"
    else
        choices=" Amazon WebServices\n Personal"
    fi
    printf "%b" "$choices" | menu
}

case "$(init_menu)" in
    " Amazon WebServices")
        wg-quick up aws
        ;;
    " Personal")
        wg-quick up personal
        ;;
    " Disconnect Amazon WebServices")
        wg-quick down aws
        ;;
    " Disconnect Personal")
        wg-quick down personal
        ;;
    *)
        ;;
esac

