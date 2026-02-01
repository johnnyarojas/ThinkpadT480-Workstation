{ config, pkgs, ... }:

{
  users.users.johnny = {
    isNormalUser = true;
    description = "johnny";
    createHome = true;

    # 'wheel' = sudo access
    # 'networkmanager' = manage Wi-Fi
    extraGroups = [ "wheel" "networkmanager" "vboxusers" ];

    # User-specific packages (optional)
    packages = with pkgs; [
      # thunderbird
    ];

  };
}
