#!/bin/bash

if [ -z "$PREFIX" ]; then
    PREFIX="/usr/local"
fi
if [ -z "$PITCHNAS_CONF_DIR" ]; then
    PITCHNAS_CONF_DIR="$PREFIX/etc/pitchnas"
fi

install_opt="-v"

install $install_opt -d "$PREFIX/bin"
install $install_opt -d "$PITCHNAS_CONF_DIR"
install $install_opt -d "$PITCHNAS_CONF_DIR/pre.d"

install $install_opt bin/* "$PREFIX/bin"
install $install_opt -m 644 etc/config.sample "$PITCHNAS_CONF_DIR"
