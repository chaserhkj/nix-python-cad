# Extract Lib3mf.py from lib3mf package to package as python module
{
  lib,
  toPythonModule,
  python,
  runCommand,
  # dependencies
  lib3mf
}: toPythonModule (runCommand "py-lib3mf" {
  inherit (lib3mf) version;
} ''
mkdir -p $out/${python.sitePackages}
cp --reflink=auto ${lib3mf.dev}/include/lib3mf/Bindings/Python/Lib3MF.py $out/${python.sitePackages}
ln -sf ${lib3mf}/lib/lib3mf.so $out/${python.sitePackages}/
'')