{
  description = "Global fallback environment with Terraform and Zsh";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    devShells.default = {system}:
      (import nixpkgs {
        system = system;
        config.allowUnfree = true;
      })
      .mkShell {
        packages = with nixpkgs; [
          terraform
          zsh
        ];
      };
  };
}
