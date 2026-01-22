{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    firefox
    wl-clipboard
    youtube-music
    zoom-us
    lyx
    texlive.combined.scheme-full
    libreoffice-fresh
    rnote
    xdg-user-dirs
    emacs-gtk
    gnomeExtensions.dash-to-dock
    gnomeExtensions.coverflow-alt-tab
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.vitals
    ntfs3g
    exfatprogs
    gparted
    rclone
    hunspell
    hunspellDicts.en_US
    git
    musescore
    muse-sounds-manager
    kdePackages.kdenlive
  ];
 }
