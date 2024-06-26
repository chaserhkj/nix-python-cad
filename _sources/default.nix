{...}: {
  perSystem = {pkgs, ...}: {
    _sources = (pkgs.callPackage ./generated.nix {})
      // (pkgs.callPackage ./fixed.nix {});
  };
}