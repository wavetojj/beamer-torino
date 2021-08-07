{
  description = "Beamer Torino";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stable.url = "github:nixos/nixpkgs/nixos-20.09";
    flake-utils.url = "github:numtide/flake-utils/master";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };

  };

  outputs =
    inputs@{ self, nixpkgs, flake-compat, flake-utils, ... }:
    {

      overlays = [ (import ./overlay.nix) ];
      overlay = nixpkgs.lib.composeManyExtensions self.overlays;

    } // flake-utils.lib.eachDefaultSystem (system:

      let
        pkgs = import nixpkgs {
          inherit system;
          config = {};
          overlays = [ self.overlay ];
        };
      in
      {
        defaultPackage = pkgs.mytex;
        devShell = import ./develop.nix { inherit pkgs; };
      }

    );

}
