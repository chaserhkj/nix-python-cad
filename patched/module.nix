{...}: {
  perSystem = {pkgs, self', ...}: {
    packages = with pkgs;
      let localPkgs = self'.packages;
    in rec {
      lib3mf = callPackage ./lib3mf {};
    }
  };
}