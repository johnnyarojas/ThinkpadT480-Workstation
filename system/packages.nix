{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    ############################################
    # Devloper Tools
    ############################################
    vim
    neovim
    git
    gcc
    gnumake
    cmake
    ffmpeg
    ganttproject-bin
    bat
    cmatrix
    terminal-toys # <- Added from Surface device
    tldr
    python312
    python312Packages.pip
    mpv
    claude-code
    file
    pyright # A Python Language Server > https://github.com/microsoft/pyright
    nixd    # A Nix Language Server > https://github.com/nix-community/nixd
    direnv  # Enviroment Loader

    ############################################
    # Office Tools
    ############################################
    libreoffice-fresh
    lyx
    rnote
    texlive.combined.scheme-full
    obs-studio
    wordbook
    geogebra
    kiwix

    ############################################
    # Music
    ############################################
    youtube-music
    musescore
    muse-sounds-manager
    ardour
    portaudio
    audacity

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
    upscayl # Free and Open Source Image Upscaler

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
    hunspellDicts.es-pe
    deskflow
    
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
    jetbrains-mono
    newcomputermodern

    ############################################
    # Engineering
    ############################################
    freecad
    bambu-studio
  ];
 }
