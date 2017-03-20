#!/bin/ssh

set -e

HOME=`eval echo ~syncthing`
CONFIG_FOLDER="$HOME/.config/syncthing"
CONFIG_FILE="$CONFIG_FOLDER/config.xml"

if [ ! -f "$CONFIG_FILE" ]; then
    $HOME/syncthing-linux-arm-v0.14.24/syncthing -generate="$CONFIG_FOLDER"
fi

chown -R syncthing:syncthing "$HOME"

exec su - syncthing -c $HOME/syncthing-linux-arm-v0.14.24/syncthing
