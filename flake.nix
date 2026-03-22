{
  description = "Typst resume develop";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = false;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          name = "resume-typst";
          packages = with pkgs; [
            typst
          ];
          shellHook = ''
            echo "Typst $(typst --version)"
          '';
        };
      });
}
