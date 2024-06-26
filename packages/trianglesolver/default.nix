{
  lib,
  buildPythonPackage,
  callPackage,

  # build system
  setuptools,

}: let
_fetched = (callPackage ../_sources/generated.nix {}).trianglesolver;
in buildPythonPackage (_fetched // rec {
  pyproject = true;

  build-system = [setuptools];
})