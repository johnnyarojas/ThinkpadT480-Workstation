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

  # Line added from Surface Workstation
  programs.emacs = {
    enable = true;          # Manage Emacs
    package = pkgs.emacs;   # Choose your Emacs variant
  };

  programs.home-manager.enable = true;
}
