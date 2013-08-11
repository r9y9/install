#!/bin/bash

# https://powerline.readthedocs.org/en/latest/installation/linux.html#installation-linux

# requirement: git, python-pip, (patched font)
function check_requirement() {
    messages=()
    for r in "git" "python-pip"
    do
	[ -z `which $r` ] && messages+=($r)
    done
    if [ ${#messages[@]} -gt 0 ]
    then
	echo "NOT found: ${messages[@]}. Try again after installing the command(s)."
	exit 1;
    fi
}

function install_powerline() {
    [ ! -f ~/.local/bin/powerline ] && pip install --user git+git://github.com/Lokaltog/powerline
}

install_powerline
