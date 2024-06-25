{...}: {
  perSystem = {pkgs, self', ...}: {
    packages.python312Packages = {
      build123d = pkgs.python312Packages.callPackage ./build123d.nix self'.packages.python312Packages;
      svgpathtools = pkgs.python312Packages.callPackage ./svgpathtools.nix self'.packages.python312Packages;
    };
  };
}