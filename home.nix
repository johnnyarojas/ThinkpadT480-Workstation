{ pkgs, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    python311Packages.jupyterlab
    python311Packages.numpy
    python311Packages.pandas
    python311Packages.matplotlib
  ];

  programs.home-manager.enable = true;
}

