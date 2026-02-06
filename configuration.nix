{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system/system.nix
    ./system/desktop.nix
    ./system/users.nix
    ./system/packages.nix
  ];

  system.stateVersion = "25.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

