#!/bin/bash

#Simple Script to make the Symlinks for the configuraton files:

function CreateSymLinks() {
    rsync -aqz --progress i3/.i3status.conf ~/.i3status.conf;
    rsync -aqz --progress i3/config ~/.i3/config;
    rsync -aqz --progress polybar/config ~/.config/polybar/config;
    rsync -aqz --progress polybar/launch.sh ~/.config/polybar/launch.sh;
}

CreateSymLinks
