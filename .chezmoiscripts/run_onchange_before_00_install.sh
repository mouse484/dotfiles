#!/bin/sh

echo "Setup aqua"

if [ ! $(command -v aqua) ]; then
    echo "Install aqua"
    cd ~/.cache
    curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v3.0.1/aqua-installer
    echo "fb4b3b7d026e5aba1fc478c268e8fbd653e01404c8a8c6284fdba88ae62eda6a  aqua-installer" | sha256sum -c
    chmod +x aqua-installer
    ./aqua-installer
    rm -f aqua-installer
fi

export PATH=$HOME/.local/share/aquaproj-aqua/bin:$PATH

aqua update-aqua
aqua install -a

echo "Done aqua"
