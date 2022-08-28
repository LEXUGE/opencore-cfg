{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.UEFI = {
    ConnectDrivers = true;

    Drivers."HfsPlus.efi".Enabled = true;
    Drivers."OpenRuntime.efi".Enabled = true;

    Quirks = {
      ReleaseUsbOwnership = true;
      UnblockFsConnect = false;
    };
  };
}
