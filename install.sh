#!/bin/bash

set -ex

: required openssl
if ! (type "openssl" > /dev/null 2>&1); then
    sudo yum install -y openssl
fi

: setup
bin/setup

: run mitamae
sudo -E bin/mitamae local "$@" lib/recipe.rb
