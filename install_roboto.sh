#!/bin/bash

function install_roboto() {
    mkdir roboto
    wget -O roboto/roboto.zip "https://developer.android.com/downloads/design/Roboto_Hinted_20120823.zip"
    unzip roboto/roboto.zip -d roboto/
    mv -vf roboto/*.ttf ~/.fonts
    rm -rf roboto
}

install_roboto

fc-cache -fv ~/.fonts
