{fetchurl, system}: let
  conda-system-map = {
    "x86_64-linux" = "linux-64";
  };
  conda-system = conda-system-map.${system};
in {
  conda = {
    clangdev = rec {
      pname = "clangdev";
      version = "9.0.1";
      conda-repo = "conda-forge";
      fname-postfix = "hcc_h8e84c24_3";
      src = fetchurl {
        url = "https://anaconda.org/${conda-repo}/${pname}/${version}/download/${conda-system}/${pname}-${version}-${fname-postfix}.tar.bz2";
        sha256 = "00000000000000000000000000000000000000000000";
      };
    };
  };
}