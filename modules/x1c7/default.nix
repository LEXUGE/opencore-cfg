({ lib, pkgs, ... }: {
  imports = [
    ./ACPI.nix
    ./Booter.nix
    ./DeviceProperties.nix
    ./Kernel.nix
    ./Misc.nix
    ./NVRAM.nix
    ./PlatformInfo.nix
    ./UEFI.nix
  ];

  config.oceanix.opencore = {
    resources.ACPIFolders = [ ../../resources/x1c7/ACPI ];
    resources.KextsFolders = [ ../../resources/x1c7/Kexts ];
    resources.packages = [
      pkgs.airportitlwm-latest-stable-big_sur
      pkgs.applealc-latest-release
      pkgs.brightnesskeys-latest-release
      pkgs.ecenabler-latest-release
      pkgs.intel-bluetooth-firmware-latest
      pkgs.nvmefix-latest-release
      pkgs.virtualsmc-latest-release
      pkgs.whatevergreen-latest-release
      pkgs.lilu-latest-release
      pkgs.voodooi2c-latest
      pkgs.voodoops2controller-latest-release
      pkgs.intel-mausi-latest-release
      pkgs.usbtoolbox-latest-release
    ];
  };
})
