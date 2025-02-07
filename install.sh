#!/bin/bash

# https://wiki.archlinux.org/title/Mkinitcpio#Possibly_missing_firmware_for_module_XXXX

{
    {

    # Update Official packages
    echo "Updating & needed"
    sudo pacman -Syu --needed --noconfirm base base-devel git linux-firmware-qlogic linux-firmware

    echo "**********************************"
    echo "**********************************"
    echo "**********************************"

    sleep .5
    sleep .5
    }

    {
    mkdir GITY-FIRMWARE && cd GITY-FIRMWARE
    sleep .5

    {

    git clone https://aur.archlinux.org/ast-firmware.git
    cd ast-firmware
    makepkg -sri --noconfirm
    cd ..
    sleep .5
    }

    {
    git clone https://aur.archlinux.org/upd72020x-fw.git
    cd upd72020x-fw
    makepkg -sri --noconfirm
    cd ..
    sleep .5
    }

    {
    git clone https://aur.archlinux.org/wd719x-firmware.git
    cd wd719x-firmware
    makepkg -sri --noconfirm
    cd ..
    sleep .5
    }

    {
    git clone https://aur.archlinux.org/aic94xx-firmware.git
    cd aic94xx-firmware
    makepkg -sri --noconfirm
    cd ..
    sleep .5
    }

    {
    git clone https://aur.archlinux.org/mkinitcpio-firmware.git
    cd mkinitcpio-firmware
    makepkg -sri --noconfirm
    cd ..
    sleep .5
    }

    echo "**********************************"
    echo "**********************************"
    echo "**********************************"
    sleep .5

    }
}
