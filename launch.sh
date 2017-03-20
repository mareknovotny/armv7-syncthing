#!/bin/ssh

set -e

HOME=`eval echo ~syncthing`
CONFIG_FOLDER="$HOME/.config/syncthing"
CONFIG_FILE="$CONFIG_FOLDER/config.xml"

if [ ! -f "$CONFIG_FILE" ]; then
    /usr/local/bin/syncthing -generate="$CONFIG_FOLDER"
fi

chown -R syncthing:syncthing "$HOME"

exec su - syncthing -c /usr/local/bin/syncthing
