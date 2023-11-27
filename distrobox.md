# Getting Distrobox to work on Nixos or any other Linux Distro

https://github.com/89luca89/distrobox

Notes are shared in my public repo:

https://github.com/emacs-elements/public_elements

Sun 26 Nov 2023 18:21:44

## Install docker and enable it in your `configuration.nix`

```
nix-env -iA nixos.docker
```

```
# Enabling docker service
  virtualisation.docker.enable = true;
```

```
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tan = {
    isNormalUser = true;
    description = "Emacs Elements";
    extraGroups = [ "networkmanager" "wheel" "docker" "vboxusers"];
    packages = with pkgs; [
      # kate
    #  thunderbird
    ];
  };
```

## Update

`sudo nixos-rebuild switch`

## Verify your installation

```
~$ nix-env -qa --installed "*"
appimage-run
distrobox-1.4.2.1
docker-20.10.25
```

## Enable Distrobox in configuration.nix

```
 # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    emacs29-gtk3
    distrobox
    ];
```

## Create a container: Examples

`distrobox create ubuntu --image ubuntu:latest`

`distrobox-create --name arch_linux --image docker.io/library/archlinux:latest`

## Verify its installation

```
~$ distrobox list
ID           | NAME                 | STATUS                         | IMAGE                         
39188e1fae3f | ubuntu               | running                        | ubuntu:latest   
```

## Enter your container and update

`distrobox enter ubuntu`

`sudo apt update`

## Install the apps you want, such as `vlc`, `simplescreenrecorder`

It provides a high level of integration with host OS.

## Export your apps

`distrobox-export --app vlc`

The item should then appear on your Nixos menu.

## To delete an exported app in the Nixos Menu

`distrobox-export --app vlc --delete`

## Create an alias in `.bashrc`

`alias ub='distrobox enter ubuntu'`

**Note: Apps will only run if dependencies are met!**

`sudo apt-get install -f`
