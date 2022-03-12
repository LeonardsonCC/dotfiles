#! /bin/bash

for d in */ ; do
    stow -vSt ~ $d
done

