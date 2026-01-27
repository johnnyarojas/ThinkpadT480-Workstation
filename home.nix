{ pkgs, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    (
      python311.withPackages (pythonPackages: [
        pythonPackages.jupyterlab
	pythonPackages.jupyterlab-vim
        pythonPackages.ipykernel
        pythonPackages.numpy
        pythonPackages.pandas
        pythonPackages.matplotlib
      ])
    )
  ];

  programs.home-manager.enable = true;
}
