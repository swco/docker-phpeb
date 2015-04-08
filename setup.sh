#!/bin/bash

uid=$(stat -c "%u" .)
gid=$(stat -c "%g" .)

groupadd -g $gid builder
useradd -g $gid -u $uid builder -G wheel

if [[ "$@" == "bash" || "$@" == "sh" ]]; then
  sudo -u builder -s
  exit
fi

sudo -u builder -s -- <<EOF
$@
EOF
