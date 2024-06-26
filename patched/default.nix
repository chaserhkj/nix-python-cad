{...}: {
  perSystem = {pkgs, self', ...}: {
    packages = with pkgs;
      let localPkgs = self'.packages;
      _src = self'._sources;
    in rec {
      lib3mf = callPackage ./lib3mf {inherit _src;};
    };
  };
}