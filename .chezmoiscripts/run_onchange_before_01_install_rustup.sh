#!/bin/sh

echo "Setup rustup"

if [ ! $(command -v rust) ]; then
    echo "Install rustup"
    curl --proto '=https' --tlsv1.2 -sSf -o rustup-installer https://sh.rustup.rs
    chmod +x rustup-installer
    ./rustup-installer -y
    rm -f rustup-installer
fi

echo "Done rustup"
