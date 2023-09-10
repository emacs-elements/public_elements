# Properly Installing Emacs on Windows
<!-- The current date is: 2023/03/08  -->

https://youtu.be/4T0u836g6BA

## Create HOME user variable

Via the Control Panel

HOME
c:\home

## Copy .emacs.d/ to HOME

## Change any file PATHS in `.emacs`

## Download Emacs

http://ftp.gnu.org/gnu/emacs/windows/emacs-28/emacs-28.2.zip

## Download Required Extra Programs

https://drive.google.com/drive/folders/1hV2VqXNnPAdmYlMUY92HNfGmHlNCaAgY?usp=sharing

## Install pandoc

https://github.com/jgm/pandoc/releases/download/3.1.1/pandoc-3.1.1-windows-x86_64.msi

``` lisp
(setq markdown-command "C:/Users/woofi/AppData/Local/Pandoc/pandoc")
```

## Add exec-paths to Emacs

c:/findutils-4.2.30-5-w64-bin/bin/
C:/Users/woofi/AppData/Local/Pandoc/
c:/hunspell/
c:/ag/

## Ag program

https://github.com/k-takata/the_silver_searcher-win32/releases/download/2020-07-05%2F2.2.0-58-g5a1c8d8/ag-2020-07-05_2.2.0-58-g5a1c8d8-x64.zip

``` lisp
;; ag the Silver Searcher
(require 'ag)
```

## Find program

https://sourceforge.net/projects/ezwinports/files/findutils-4.2.30-5-w64-bin.zip/download

`(setq find-program "C:/findutils-4.2.30-5-w64-bin/bin/find.exe")`

## System Variables/Path

`C:\findutils-4.2.30-5-w64-bin\bin` must be at top of System Variables

## Hunspell

``` lisp
;; Hunspell
(setq ispell-program-name "hunspell")
(setq ispell-hunspell-dict-paths-alist
'(("en_GB" "c:/hunspell/en_GB.aff")))
(setq ispell-local-dictionary "en_GB")
(setq ispell-local-dictionary-alist
'(("en_GB" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_GB") nil utf-8)))
(flyspell-mode 1)
```

## Enabling Symlinks

`run.exe`
`secpol.msc`
add user
https://portal.perforce.com/s/article/3472

## Install Git

https://github.com/git-for-windows/git/releases/download/v2.39.2.windows.1/Git-2.39.2-64-bit.exe

GitHub SSH
Open PowerShell
Navigate to preferred directory
Run the `ssh-keygen` command to create SSH keys
Copy the value of the SSH public key
Save the public key in your GitHub account settings
