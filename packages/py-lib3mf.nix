{
  lib,
  buildPythonPackage,
  callPackage,

  # build system
  setuptools,

  # dependencies
}: let
_fetched = (callPackage ../_sources/generated.nix {}).py-lib3mf;
in buildPythonPackage (_fetched // rec {
  pyproject = true;
})