{
  lib,
  stdenv,
  cmake,
  libclang,
  python3Packages,
}: let
_fetched = (callPackage ../_sources/generated.nix {}).ocp;
in stdenv.mkDerivation (_fetched // rec {
  buildInputs = [ libclang ];
  nativeBuildInputs = [ cmake python3Packages.jinja2 ];
  configurePhase = ''
  runHook preConfigure
  python3 -m pywrap.bindgen all ocp.toml
  cmake -S OCP -B build
  runHook postConfigure
  '';
  buildPhase = ''
  echo "Abort"
  return 1;
  ''
})