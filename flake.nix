{
  description = "Nix flake for jenss";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
    in {
      homeConfigurations."jenss" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ 
            ./home.nix
            ./packages.nix 
            ./modules/virt-manager.nix
        ];
      };
    };
}
