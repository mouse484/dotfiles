#!/bin/sh

echo "Setup mise"

if [ ! $(command -v mise) ]; then
    echo "Install aqua"
    cd ~/.cache
    curl -o mise-installer  https://mise.run
    chmod +x mise-installer
    ./mise-installer
    rm -f mise-installer
fi

mise install

echo "Done mise"
