{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    with (import nixpkgs {
      inherit system;
    }); {
      devShells.default = mkShellNoCC {
        buildInputs = [
          # (with pkgs.coqPackages_8_18; [coq mathcomp])
          android-tools
        ];
      };
    });
}
