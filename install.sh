#!/bin/bash

if [ -z "$PREFIX" ]; then
    PREFIX="/usr/local"
fi

install_opt="-v"

install $install_opt -d "$PREFIX/bin"
install $install_opt -d "$PREFIX/etc"
install $install_opt -d "$PREFIX/etc/pre.d"

install $install_opt bin/* "$PREFIX/bin"
install $install_opt -m 644 etc/config.sample "$PREFIX/etc/"
