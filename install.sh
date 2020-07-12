#!/bin/bash

for subdir in "ftdetect" "ftplugin" "syntax"; do
    mkdir -p ~/.vim/$subdir 2> /dev/null
    for df in $subdir/* ; do
        if [ "$1" == "-l" ] || [ "$1" == "--link" ]; then
            ln -fs $PWD/$df ~/.vim/$subdir
        else
            cp $df ~/.vim/$subdir
        fi
    done
done
