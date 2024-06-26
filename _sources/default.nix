{...}: {
  perSystem = {pkgs, ...}: {
    _sources = pkgs.callPackage ./generated.nix {};
  };
}