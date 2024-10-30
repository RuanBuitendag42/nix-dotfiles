{
  description = "Home Manager configuration of ruanb";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
    stylix = {
      url = "github:danth/stylix";
      flake = false;
    };
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs =
    { nixpkgs
    , home-manager
    , catppuccin
    , stylix
    , ...
    } @ inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations.ruanb = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./ruanb/home.nix
          (import inputs.stylix).homeManagerModules.stylix
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
        modules = [
          ./system/configuration.nix
          (import inputs.stylix).nixosModules.stylix
        ];
      };
    };
}
