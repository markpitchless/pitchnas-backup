#!/bin/bash

if [ -z "$PREFIX" ]; then
    PREFIX="/usr/local"
fi

install -d "$PREFIX/bin"
install -d "$PREFIX/etc"
install -d "$PREFIX/etc/pre.d"

install bin/* "$PREFIX/bin"
install -m 644 etc/config.sample "$PREFIX/etc/"
