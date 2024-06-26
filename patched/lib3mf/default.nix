{ lib, lib3mf, callPackage, _src }:
lib3mf.overrideAttrs (let src = _src.lib3mf; in {
    inherit (src) src;
    version = lib.strings.removePrefix "v" src.version;
    patches = [./unittest_deprecated_openssl_call.patch];
})
