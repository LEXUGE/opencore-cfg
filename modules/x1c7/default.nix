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

  config.oceanix.opencore.resources = {
    ACPIFolders = [ ../../resources/x1c7/ACPI ];
    KextsFolders = [ ../../resources/x1c7/Kexts ];
    DriversFolders = [ ../../resources/x1c7/Drivers ];
    packages = [
      pkgs.airportitlwm-latest-stable-big_sur
      pkgs.applealc-latest-release
      pkgs.brightnesskeys-latest-release
      pkgs.ecenabler-latest-release
      pkgs.intel-bluetooth-firmware-latest
      pkgs.brcmpatchram-latest-release
      pkgs.nvmefix-latest-release
      pkgs.virtualsmc-latest-release
      pkgs.whatevergreen-latest-release
      pkgs.lilu-latest-release
      pkgs.voodooi2c-latest
      pkgs.voodoops2controller-latest-release
      pkgs.rtcmemoryfixup-latest-release
      pkgs.intel-mausi-latest-release
      pkgs.usbtoolbox-latest-release
    ];
  };
})
