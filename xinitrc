#!/usr/bin/env bash 

# read ~/.Xmodmap if it exists
if [[ -f "${HOME}/etc/xmodmap" ]]; then
    xmodmap "${HOME}/etc/xmodmap"
fi

# read ~/.Xresources if it exists
if [[ -f "${HOME}/etc/xresources" ]]; then
    xrdb -load "${HOME}/etc/xresources"
fi

