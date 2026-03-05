{
  description = "My NixOS system (flake-based)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: # Added 'inputs' here
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
