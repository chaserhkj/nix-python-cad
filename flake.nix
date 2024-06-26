{
  description = "Nix packaging of python CAD packages";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        ./sources.nix
        ./_sources
        ./packages
        ./patched
        ./devshell.nix
      ];
      # Only x86_64-linux is tested at the moment, will try to add more later
      systems = [ "x86_64-linux" ];
    };
}
