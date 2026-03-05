{
  description = "My NixOS system (flake-based)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      # REMOVE the nixpkgs.follows line here.
      # By NOT following your stable nixpkgs, Zen will use the
      # newer dependencies it was built with.
    };
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, ... }@inputs: # Added 'inputs' here
  {
    nixosConfigurations.thinkpad-t480 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      # Pass inputs to your modules so configuration.nix can see 'zen-browser'
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
