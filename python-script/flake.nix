{
  description = "Python Template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        python = pkgs.python311;
      in {
        packages.default = python.pkgs.buildPythonApplication rec {
          pname = "template";
          version = "0.0.0";
          format = "pyproject";
          src = ./.;
          pythonImportsCheck = [ pname ];

          nativeBuildInputs = [
            python
          ];

          propagatedBuildInputs = [
            python.pkgs.setuptools
            python.pkgs.requests
            #pkgs.hello
          ];

          nativeCheckInputs = [
            #python.pkgs.mypy
            #python.pkgs.types-requests
          ];
        };
      });
}
