#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "emacs --daemon"
run "redshift-gtk"
run "eval $(ssh-agent)"


