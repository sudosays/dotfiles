#!/bin/sh

run() {
    if ! pgrep -f "$1" ;
    then
        "$@"&
    fi
}

run "redshift-gtk"
# run "picom"
# run "xscreensaver --no-splash"
run "dropbox"
