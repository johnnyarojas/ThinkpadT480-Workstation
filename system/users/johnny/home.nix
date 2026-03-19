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


# mbsync
  programs.mbsync.enable = true;
  programs.msmtp.enable = true;
  programs.mu.enable = true;

  accounts.email = {
    maildirBasePath = "Mail";

    accounts = {
      "gmail-personal" = {
        address = "johnny.rojas.me@gmail.com";
        userName = "johnny.rojas.me@gmail.com";
        flavor = "gmail.com";
        passwordCommand = "cat /home/johnny/.secrets/gmail-personal";
        primary = true;

        mbsync = {
          enable = true;
          create = "maildir";
          expunge = "both";
        };

        msmtp.enable = true;
        mu4e.enable = true;
      };

      "gmail-work" = {
        address = "johnny.rojas.k@gmail.com";
        userName = "johnny.rojas.k@gmail.com";
        flavor = "gmail.com";
        passwordCommand = "cat /home/johnny/.secrets/gmail-academic";

        mbsync = {
          enable = true;
          create = "maildir";
          expunge = "both";
        };

        msmtp.enable = true;
        mu4e.enable = true;
      };
    };
  };
}
