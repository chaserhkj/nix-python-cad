{
  lib,
  buildPythonPackage,
  python,

  # For binary dependencies
  pythonManylinuxPackages,
  autoPatchelfHook,

  # source code
  _src,
}: let
  src = _src.wheelPackages.ocp python;
in buildPythonPackage (src // rec {
  buildInputs = pythonManylinuxPackages.manylinux1;
  nativeBuildInputs = [autoPatchelfHook];
  pname = "ocp";
})