= Get a fully working install of Emacs on Fedora (Silverblue)
[2023-12-14 03:26] 

# Why you want to do it

The flatpak version works fine, but it's not easy to get external apps to work within it

# If using Fedora Silverblue

Install toolbox

```
toolbox create
toolbox enter
```

# Check if the following are installed:

python --version
hunspell --version

# Install repos

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install Emacs

sudo dnf update
sudo dnf install emacs.x86_64

# Install Dependent Applications

sudo dnf install ImageMagick (requires restart of toolbox; for images)
sudo dnf install adobe-source-code-pro-fonts
sudo dnf install dejavu-sans-mono-fonts
sudo dnf install espeak
sudo dnf install ffmpeg (for whisper)
sudo dnf install firefox (for markdown-export)
sudo dnf install okular gwenview
sudo dnf install pandoc (for markdown-export)
sudo dnf install poppler poppler-devel (for pdf-tools)
sudo dnf install python3-pip
sudo dnf install ripgrep (for content searches)
sudo dnf install source-foundry-hack-fonts
sudo dnf install unifont-fonts
sudo dnf install vlc (to view videos through dired)

# Update font cache

fc-cache -fv

# Clone whisper

`git clone git@github.com:natrys/whisper.el.git`

```
(use-package whisper
  :load-path "/var/home/tan/Source/whisper.el"
  :bind ("M-s r" . whisper-run)
  :config
  (setq whisper-model "base"
	whisper-language "en"
	whisper-translate nil)
  (setq whisper-arecord-device "hw:2,0")
  (setq whisper-arecord-args '("-f" "cd" "-c" "1")))
```

Adjust to accommodate your own recording devices

# Create a Desktop Icon

`/var/home/tan/.local/share/applications/emacs-toolbox.desktop`

```
[Desktop Entry]
Name=Emacs (Toolbox)
Exec=toolbox run emacs
Type=Application
Icon=/var/home/tan/Pictures/emacs.png
Comment=Emacs Text Editor
Categories=Development;TextEditor;
Terminal=false
```
