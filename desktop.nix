{ config, pkgs, ... }:

{
  ############################################
  #  Enable X11 + GNOME Desktop
  ############################################
  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  ############################################
  #  Keyboard layout
  ############################################
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  ############################################
  #  Touchpad Support (optional)
  ############################################
  # services.xserver.libinput.enable = true;
}
