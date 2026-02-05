{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ############################################
    # Devloper Tools
    ############################################
    vim
    neovim
    git
    ganttproject-bin
    bat
    cmatrix
    terminal-toys # <- Added from Surface device

    ############################################
    # Office Tools
    ############################################
    libreoffice-fresh
    lyx
    rnote
    texlive.combined.scheme-full

    ############################################
    # Music
    ############################################
    youtube-music
    musescore
    muse-sounds-manager

    ############################################
    # Graphics
    ############################################
    gimp
    kdePackages.kdenlive
    blender
    krita
    imagemagick # <- Added for support in emacs

    ############################################
    # Internet
    ############################################
    firefox

    ############################################
    # System
    ############################################
    wl-clipboard
    xdg-user-dirs
    ntfs3g
    exfatprogs
    gparted
    rclone
    hunspell
    hunspellDicts.en_US
    
    ############################################
    # Social
    ############################################
    zoom-us
    signal-desktop
    
    ############################################
    # GNOME Extensions
    ############################################
    gnomeExtensions.dash-to-dock
    gnomeExtensions.coverflow-alt-tab
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.vitals

    ############################################
    #  Games
    ############################################
    prismlauncher

    ############################################
    # Fonts
    ############################################
    nerd-fonts.fira-code # <- Added for support for doom

  ];
 }
