# Installing Doom Emacs on Windows

## Why Doom?

- It greatly simplifies Emacs keybindings
- Offers better defaults out the box
- Allows one to use Vim-like commands with Emacs' commands
- Lovely interface
- Doom is highly modular, making it easier to customize. Users can enable or disable entire sets of features through modules.
- It's very fast
- There's a helpful "Doom" community to be found on Discord
- Utilizes the concept of a "leader key" for many of its keybindings
	- `SPC f s`

# How to install and Try out Doom Emacs on Windows

Install Emacs

Add Bin Path to System/Path

`C:\Program Files\emacs-29.1_2\bin`

Rename your current Dot Emacs directory

Install Git

Go to dir where .emacs will be stored:

`C:\Users\woofi\OneDrive\Documents`

git clone --depth 1 https://github.com/hlissner/doom-emacs .emacs.d

cd .emacs.d

bin/doom install

Follow process

Add Doom's bin Directory to PATH

`C:\Users\woofi\OneDrive\Documents\.emacs.d\bin`

You can now run commands like

```
doom sync (after config changes)
doom doctor
doom upgrade
```

## Start Emacs

## Two config files

Doom uses three configuration files: 

```
config.el 
init.el
package.el
```

init.el is used to enable and disable Doom's modules, essentially choosing which features, languages, and tools you want in your setup.

config.el: Your personal Emacs Lisp code for customization.

packages.el: This file is specifically for declaring and managing additional Emacs packages not included in Doom's modules. 

Note: `Doom Emacs` uses straight.el as its package manager









