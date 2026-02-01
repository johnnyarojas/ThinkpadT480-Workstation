{ pkgs, ... }:

{
  home.stateVersion = "25.11";

  programs.neovim = {
    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraLuaConfig = ''
      vim.opt.number = true
      vim.opt.relativenumber = true
      vim.opt.colorcolumn = "80"
    '';
  };

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
