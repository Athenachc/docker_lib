#!/bin/bash

XAUTH=/tmp/.docker.xauth

# Remove existing file or directory
if [ -e $XAUTH ]; then
  sudo rm -rf $XAUTH
fi

# Create as clean file
touch $XAUTH
chmod 600 $XAUTH

# Merge xauth data
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

