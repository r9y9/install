#!/bin/bash

install_eigen() {
    if [ -e eigen ]
    then
	rm -rf eigen
    fi
    hg clone https://bitbucket.org/eigen/eigen/
    sudo cp -rf eigen/Eigen /usr/local/include/
    sudo cp -rf eigen/unsupported /usr/local/include/
    rm -rf eigen
}

install_eigen
