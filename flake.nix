{
  description = "My OpenCore config managed by oceanix";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.utils.url = "github:numtide/flake-utils";
  inputs.oceanix.url = "github:LEXUGE/oceanix";

  outputs = { self, nixpkgs, utils, oceanix, ... }: with utils.lib;
    eachSystem [ system.x86_64-darwin system.x86_64-linux ] (system:
      {
        packages = rec {
          x1c7 = (oceanix.lib.OpenCoreConfig {
            pkgs = import nixpkgs {
              inherit system;
              overlays = [ oceanix.overlays.default ];
            };

            modules = [
              ./modules/x1c7
            ];
          }).efiPackage;
          default = x1c7;
        };

        apps = rec {
          fmt = utils.lib.mkApp {
            drv = with import nixpkgs { inherit system; };
              pkgs.writeShellScriptBin "opencore-cfg-fmt" ''
                export PATH=${
                  pkgs.lib.strings.makeBinPath [
                    findutils
                    nixpkgs-fmt
                    shfmt
                    shellcheck
                  ]
                }
                find . -type f -name '*.sh' -exec shellcheck {} +
                find . -type f -name '*.sh' -exec shfmt -w {} +
                find . -type f -name '*.nix' -exec nixpkgs-fmt {} +
              '';
          };
          default = fmt;
        };
      });
}
