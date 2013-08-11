#!/bin/bash

function install_emacs24() {
    sudo add-apt-repository ppa:cassou/emacs
    sudo apt-get update
    sudo apt-get install emacs24
}

install_emacs24
