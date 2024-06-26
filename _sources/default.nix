{...}: {
  perSystem = {pkgs, ...}: {
    packages._src = pkgs.callPackage ./generated.nix {};
  }
}