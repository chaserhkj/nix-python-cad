{ lib, lib3mf, callPackage }:
let _fetched = (callPackage ../../_sources/generated.nix {}).lib3mf;
in lib3mf.overrideAttrs {
    inherit (_fetched) src;
    version = lib.strings.removePrefix "v" _fetched.version;
    patches = [./unittest_deprecated_openssl_call.patch];
}
