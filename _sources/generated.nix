# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  build123d = {
    pname = "build123d";
    version = "v0.5.0";
    src = fetchFromGitHub {
      owner = "gumyr";
      repo = "build123d";
      rev = "v0.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-0ztJeKRmIWJeaF3Os8bydTN2wKV0ca6WTsKj5sLksPg=";
    };
  };
  lib3mf = {
    pname = "lib3mf";
    version = "v2.3.1";
    src = fetchFromGitHub {
      owner = "3MFConsortium";
      repo = "lib3mf";
      rev = "v2.3.1";
      fetchSubmodules = false;
      sha256 = "sha256-klssRLh4ktKSe1K3sHPlwXznU6GWe8csoioHT1xyYHQ=";
    };
  };
  svgpathtools = {
    pname = "svgpathtools";
    version = "1.6.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/s/svgpathtools/svgpathtools-1.6.1.tar.gz";
      sha256 = "sha256-cFTm3hlT4pW/Vl1TXVhWlUU7CfjbSi98SFM0hzIJej4=";
    };
  };
  trianglesolver = {
    pname = "trianglesolver";
    version = "1.2";
    src = fetchurl {
      url = "https://pypi.org/packages/source/t/trianglesolver/trianglesolver-1.2.tar.gz";
      sha256 = "sha256-SvGKreV51cDWQ4mz5lrq8Gz/JjGXYszYWeMmhVmnauo=";
    };
  };
}
