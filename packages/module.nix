{...}: {
  perSystem = {pkgs, self', ...}: {
    packages = rec {
      # Our packages
      build123d = pkgs.python3Packages.callPackage ./build123d.nix { inherit svgpathtools; };
      svgpathtools = pkgs.python3Packages.callPackage ./svgpathtools.nix {};
      py-lib3mf = pkgs.python3Packages.callPackage ./py-lib3mf.nix {};

      # Overridden nixpkgs pkgs
      lib3mf = pkgs.lib3mf.
    };
  };
}