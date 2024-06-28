{lib, ...}: {
  perSystem = {pkgs, self', ...}: {
    packages = with pkgs;
      let localPkgs = self'.packages;
          _src = self'._sources;
    in rec {
      # Our packages
      # build123d = python3Packages.callPackage ./build123d.nix { inherit svgpathtools; };
      svgpathtools = python3Packages.callPackage ./svgpathtools { inherit _src; };
      py-lib3mf = python3Packages.callPackage ./py-lib3mf { inherit _src; inherit (localPkgs) lib3mf; };
      trianglesolver = python3Packages.callPackage ./trianglesolver { inherit _src; };
      # ocp = callPackage ./ocp { inherit _src; };
      ocp = ocp-wheel;
      ocp-wheel = python3Packages.callPackage ./ocp/wheel.nix {inherit _src;};
    };
  };
}