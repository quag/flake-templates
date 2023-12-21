#!/usr/bin/env bash
PACKAGE_NAME=$(basename $(realpath .))
sed -i 's/pname = "template"/pname = "'"$PACKAGE_NAME"'"/' flake.nix
sed -i 's/template/'"$PACKAGE_NAME"'/g' pyproject.toml
mv src/template.py src/"$PACKAGE_NAME".py
