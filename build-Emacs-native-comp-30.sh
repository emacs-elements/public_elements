#!/bin/bash

# https://youtu.be/fwmthSyTM_4

# A SCRIPT TO RUN A FRESH INSTALL OF EMACS 30 WITH NATIVE COMPILATION AHEAD OF TIME (AOT)

# First make sure you enable sources in your Linux Distro. On Linux Mint: Software sources, Source code repos - enable

# Install all the necessary dependencies to build Emacs from source

sudo apt build-dep emacs

# Since we want to build Emacs 30 with SVG support, install the following as well:

sudo apt-get install build-essential autoconf automake libtool texinfo libgtk-3-dev libxpm-dev libjpeg-dev libgif-dev libtiff5-dev libgnutls28-dev libncurses-dev libxml2-dev libgpm-dev libdbus-1-dev libgtk2.0-dev libpng-dev libotf-dev libm17n-dev librsvg2-dev libmagickcore-dev libmagickwand-dev libglib2.0-dev libgirepository1.0-dev

# If you do not intend to use doc-view in Emacs 30 you do not need to install the above.

# Install MUPDF

sudo apt-get update
sudo apt-get install mupdf mupdf-tools

# Again, if you do not intend to use doc-view in Emacs 30 you do not need to install the above.

# Install git
sudo apt install git

# Install the correct version of libgccjit. To find out what that is, type `gcc --version` in the terminal. You will get something like `gcc (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0`

sudo apt install libgccjit-11-dev

# Create a directory in which one will build emacs
# e.g. ~/Source

cd ~/
mkdir -p Source
cd ~/Source

# Clone Emacs
git clone https://github.com/mirrors/emacs.git

# Change to the Emacs directory
cd emacs

# Run ./autogen.sh script to generate the necessary build files
./autogen.sh

# Configure Emacs with native compilation
./configure --with-native-compilation=aot --with-rsvg

make bootstrap
make

# Note: Thanks to slk500 who says: make -j($nproc) -> will set it automatically

sudo make install

# Add this to .Emacs, which disables the warnings and errors produced by the native compilation process in Emacs: `(setq native-comp-async-report-warnings-errors nil)`
