{ config, pkgs, ... }:

{
  users.users.johnny = {
    isNormalUser = true;
    description = "johnny";
    createHome = true;

    # 'wheel' = sudo access
    # 'networkmanager' = manage Wi-Fi
    extraGroups = [ "wheel" "networkmanager" "vboxusers" ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.johnny = import ./users/johnny/home.nix;
  };
}
