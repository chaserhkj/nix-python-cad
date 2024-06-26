{
  lib,
  callPackage,
  stdenv,
  cmake,
  libclang,
  python3Packages,

  # source code
  _src,
}: let
src = _src.ocp;
in stdenv.mkDerivation (src // rec {
  buildInputs = [ libclang ];
  nativeBuildInputs = [ cmake ] ++
  # Package required for the enclosed pywrap generator
  (with python3Packages; [
    click
    logzero
    path
    toml
    pandas
    joblib
    tqdm
    jinja2
    toposort
    pyparsing
    pybind11
    schema
  ]) ++ [python3Packages.libclang];

  configurePhase = ''
  runHook preConfigure
  python3 -m pywrap.bindgen all ocp.toml
  cmake -S OCP -B build
  runHook postConfigure
  '';

  buildPhase = ''
  echo "Abort"
  return 1;
  '';
})