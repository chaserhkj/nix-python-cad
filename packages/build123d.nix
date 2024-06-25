{
  lib,
  buildPythonPackage
  callPackage,

  # build system
  setuptools,
  wheel,
  setuptools-scm,

  # dependencies
  cadquey-ocp,
  typing-extensions,
  numpy,
  svgpathtools,
}: let
_fetched = (callPackage ../_sources/generated.nix).build123d;
in buildPythonPackage (_fetched // rec {
  pyproject = true;
})