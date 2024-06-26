{
  lib,
  buildPythonPackage,
  callPackage,

  # build system
  setuptools,
  wheel,
  setuptools-scm,

  # dependencies
  # cadquey-ocp,
  typing-extensions,
  numpy,
  svgpathtools,

  # source code
  _src,
}: let
src = _src.build123d;
in buildPythonPackage (src // rec {
  pyproject = true;
  version = lib.strings.removePrefix "v" src.version;
})