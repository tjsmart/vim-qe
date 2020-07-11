#!/bin/bash

for subdir in "ftdetect" "syntax"; do
    mkdir -p ~/.vim/$subdir 2> /dev/null
    if [ "$1" == "l" ]; then
        ln -fs $PWD/$subdir/espresso.vim ~/.vim/$subdir
    else
        cp $subdir/espresso.vim ~/.vim/$subdir
    fi
done
