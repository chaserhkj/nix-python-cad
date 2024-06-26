{
  lib,
  buildPythonPackage,
  callPackage,

  # build system
  setuptools,

  # source code
  _src,
}: let
src = _src.trianglesolver;
in buildPythonPackage (src // rec {
  pyproject = true;

  build-system = [setuptools];
})