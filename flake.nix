{
  description = "Home Manager configuration of ruanb";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvim-lsp-file-operations = {
      url = "github:antosha417/nvim-lsp-file-operations";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    catppuccin,
    nixvim,
    nvim-lsp-file-operations,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations.ruanb = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./ruanb/home.nix
        catppuccin.homeManagerModules.catppuccin
      ];
      extraSpecialArgs = {
        inherit inputs;
      };
    };
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit system;
        inherit inputs;
      };
      modules = [./system/configuration.nix];
    };
  };
}
