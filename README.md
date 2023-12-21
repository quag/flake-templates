# flake-templates
A collection of Quag's nix flake templates

## Usage of python-script template
```sh
mkdir examplescript && cd examplescript
nix flake init -t github:quag/flake-templates#python-script
bash rename-from-template-to-folder-name.sh && rm rename-from-template-to-folder-name.sh
nix build
./result/bin/examplescript
nix develop # or direnv allow
```
