{
  lib,
  buildPythonPackage
  callPackage,

  # build system
  setuptools,

  # dependencies
  numpy,
  svgwrite,
  scipy,
}: let
_fetched = (callPackage ../_sources/generated.nix).svgpathtools;
in buildPythonPackage (_fetched // rec {
  pyproject = true;
})