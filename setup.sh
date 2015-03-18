#!/bin/bash

uid=$(stat -c "%u" .)
gid=$(stat -c "%g" .)

groupadd -g $gid builder
useradd -g $gid -u $uid builder

sudo -Eu builder $@
