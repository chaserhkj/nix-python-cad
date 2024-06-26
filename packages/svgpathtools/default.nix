{
  lib,
  buildPythonPackage,
  callPackage,

  # build system
  setuptools,

  # dependencies
  numpy,
  svgwrite,
  scipy,

  # source code
  _src,
}: let
src = _src.svgpathtools;
in buildPythonPackage (_fetched // rec {
  pyproject = true;

  build-system = [setuptools];

  dependencies = [
    numpy
    svgwrite
    scipy
  ];
})