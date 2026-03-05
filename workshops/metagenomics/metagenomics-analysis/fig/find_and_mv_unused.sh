#!/usr/bin/env bash

target=${1:-.} # use current dir if not specified

IFS=$'\n'
for f in $(find "$target" -type f \( -iname "*.jpg" -iname "*.png" -iname "*.svg" \) )
do
    F=$(basename $f)
    echo "$F" $(grep -l "$F" ../lessons/*.md)
done
