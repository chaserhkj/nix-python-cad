{...}: {
  perSystem = {pkgs, self', ...}: {
    packages = rec {
      build123d = pkgs.python3Packages.callPackage ./build123d.nix { inherit svgpathtools; };
      svgpathtools = pkgs.python3Packages.callPackage ./svgpathtools.nix {};
    };
  };
}