{lib, fetchurl, fetchPypi, system}: let
  getAbi = python: with builtins; 
    "cp${elemAt (splitVersion python.version) 0}${elemAt (splitVersion python.version) 1}";

  baseWheelSrc = {
    ocp = interpreter: rec {
      pname = "cadquery_ocp";
      version = "7.7.2";
      format = "wheel";
      dist = interpreter;
      python = abi;
      abi = getAbi interpreter;
    };
  };

  srcs = {
    "x86_64-linux" = {
      wheel.ocp = interpreter: let
          base = baseWheelSrc.ocp interpreter;
        in rec {
          inherit (base) version format;
          src = fetchPypi ( base // {
            platform = "manylinux_2_35_x86_64";
            sha256 = "sha256-K+lAhVHAPhxxXjsVi0HORYF47PUwumROPohKWYn+thE=";
          });
        };
      conda = {
        clangdev = fetchurl rec {
            url = "https://anaconda.org/conda-forge/clangdev/9.0.1/download/linux-64/clangdev-9.0.1-hcc_h8e84c24_3.tar.bz2";
            sha256 = "sha256-X8CA7jGjSrJhVXi9KCWUwYtsf7R+3EZpjCtH4WfkR7o=";
          };
        };
      };
    };
in with lib.attrsets; {
  condaPackages = srcs.${system}.conda;
  wheelPackages = srcs.${system}.wheel;
}