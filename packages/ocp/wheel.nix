{
  lib,
  buildPythonPackage,

  # build system

  # source code
  _src,
}: let
  src = _src.wheelPackages.ocp;
in buildPythonPackage (src // rec {
})