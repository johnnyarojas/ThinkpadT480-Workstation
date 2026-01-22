{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system.nix
    ./desktop.nix
    ./users.nix
    ./packages.nix
  ];

  system.stateVersion = "25.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

