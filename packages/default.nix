{lib, ...}: {
  perSystem = {pkgs, self', ...}: {
    packages = with pkgs;
      let localPkgs = self'.packages;
    in rec {
      # Our packages
      build123d = python3Packages.callPackage ./build123d.nix { inherit svgpathtools; };
      svgpathtools = python3Packages.callPackage ./svgpathtools.nix {};
      py-lib3mf = python3Packages.callPackage ./py-lib3mf.nix {};
    };
  };
}