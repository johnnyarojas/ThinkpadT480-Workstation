{ config, pkgs, ... }:

{
  ############################################
  #  Boot + Kernel
  ############################################
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
  };
  boot.loader.efi.canTouchEfiVariables = true; # Allows NixOS to manage EFI variables
  boot.kernelPackages = pkgs.linuxPackages_latest; # Latest kernel
  boot = {

    plymouth = {
      enable = true;
      theme = "rings";
      themePackages = with pkgs; [
        # By default we would install all themes
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "rings" ];
        })
      ];
    };

    # Enable "Silent boot"
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "udev.log_level=3"
      "systemd.show_status=auto"
    ];
    # Hide the OS choice for bootloaders.
    # It's still possible to open the bootloader list by pressing any key
    # It will just not appear on screen unless a key is pressed
    loader.timeout = 0;

  };

  ############################################
  #  Hostname & Networking
  ############################################
  networking.hostName = "thinkpad-t480";

  # Use NetworkManager for Wi-Fi + Ethernet handling
  networking.networkmanager.enable = true;

  ############################################
  #  Locale & Time
  ############################################
  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_TIME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
  };

  ############################################
  #  Printing Support
  ############################################
  services.printing.enable = true;

  ############################################
  #  Audio (PipeWire replaces PulseAudio)
  ############################################
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;   # Enable if you use JACK audio apps
  };
  ############################################
  # Power Saving Features (TLP)
  ############################################
  services.tlp.enable = true; # Enable TLP for laptop use wt default configuration
  services.power-profiles-daemon.enable = false;

  ############################################
  #  Allow Unfree Packages (Chrome, Zoom, etc.)
  ############################################
  nixpkgs.config.allowUnfree = true;

  ############################################
  # NTFS Support
  ############################################
  boot.supportedFilesystems = [ "ntfs" ];
  services.udisks2.enable = true;
}
