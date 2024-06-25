{...}: {
  perSystem = {self', pkgs, ...}: {
    # Default devshell with all exported packages
    devShells.default = pkgs.mkShell {
      packages = builtins.attrValues self'.packages;
    };
  };
}