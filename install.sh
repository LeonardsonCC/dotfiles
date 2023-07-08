#! /bin/bash

pushd "$HOME/dotfiles"
for d in */ ; do
    stow -vSt ~ $d
done
popd

