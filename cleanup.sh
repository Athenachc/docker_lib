#!/bin/bash

XAUTH_N=/tmp/.docker.xauth-n

# Remove any existing file or directory
if [ -e $XAUTH_N ]; then
  sudo rm -rf $XAUTH_N
fi

# Create as a clean file
touch $XAUTH_N
chmod 600 $XAUTH_N

# Merge xauth data
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH_N nmerge -
