{ lib, flake-parts-lib, ... }:
let
  inherit (lib)
    mkOption
    types
    ;
  inherit (flake-parts-lib)
    mkTransposedPerSystemModule
    ;
in
mkTransposedPerSystemModule {
  name = "_sources";
  option = mkOption {
    type = types.lazyAttrsOf types.anything;
    default = { };
    description = ''
    Source code configurations for this flake
    '';
  };
  file = ./sources.nix;
}