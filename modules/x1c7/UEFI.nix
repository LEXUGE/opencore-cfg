{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.UEFI = {
    # For FileVault
    Input.KeySupport = true;
    Output.ProvideConsoleGop = true;
    ProtocolOverrides.FirmwareVolume = true;

    ConnectDrivers = true;

    Drivers."HfsPlus.efi".Enabled = true;
    Drivers."OpenRuntime.efi".Enabled = true;

    Quirks = {
      RequestBootVarRouting = true;
      ReleaseUsbOwnership = true;
      UnblockFsConnect = false;
    };
  };
}
