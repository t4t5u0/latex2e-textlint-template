#!/bin/bash

if [ ! -z "$GITHUB_ACTIONS" ]; then
    cp -r writing_space $HOME/
    # rsync -r writing_space $HOME/
    # mv writing_space/.* .
fi

make pdf

