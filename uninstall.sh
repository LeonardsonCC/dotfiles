#! /bin/bash

for d in */ ; do
    stow -vDt ~ $d
done
