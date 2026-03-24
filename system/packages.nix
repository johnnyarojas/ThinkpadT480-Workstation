{ config, pkgs, inputs, ... }:

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
    tldr
    python312
    python312Packages.pip
    mpv
    claude-code

    ############################################
    # Office Tools
    ############################################
    libreoffice-fresh
    lyx
    rnote
    texlive.combined.scheme-full
    obs-studio

    ############################################
    # Music
    ############################################
    youtube-music
    musescore
    muse-sounds-manager
    ardour
    portaudio

    ############################################
    # Graphics
    ############################################
    gimp
    kdePackages.kdenlive
    blender
    krita
    imagemagick # <- Added for support in emacs
    inkscape
    darktable

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
    deskflow
    ffmpeg
    
    ############################################
    # Social
    ############################################
    zoom-us
    signal-desktop
    discord # MOVE EVENTUALLY TO HOME.NIX
    
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
    lmodern
    pixel-code

  ];
 }
