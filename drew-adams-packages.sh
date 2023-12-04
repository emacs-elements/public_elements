#!/bin/bash
# Author: Raoul Comninos
# Description: Updates all of the Drew Adams files I use from Emacswiki
# Date: 2023-06-09

# The list of packages and libraries
packages=(
    bookmark+-chg.el
    bookmark+-doc.el
    bookmark+-lit.el
    bookmark+-key.el
    bookmark+-1.el
    bookmark+-bmu.el
    bookmark+-mac.el
    bookmark+.el
    highlight.el
    festival.el
    showkey.el
    vline.el
    col-highlight.el
    hl-line+.el
    crosshairs.el
    hide-comnt.el
    thing-cmds.el
    sortie.el
    grep+.el
    fit-frame.el
    frame-fns.el
    frame-cmds.el
    zoom-frm.el
)

# The location to save the packages
dest_dir="$HOME/.emacs.d/lisp"

# Create the directory if it does not exist
mkdir -p "$dest_dir"

# Download each package
for pkg in "${packages[@]}"; do
    url="https://www.emacswiki.org/emacs/download/$pkg"
    dest_file="$dest_dir/$pkg"
    echo "Downloading $url"
    curl -o "$dest_file" "$url"
done
