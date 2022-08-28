{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Booter = {
    # Not used and not enabled in sample.plist, can safely be empty.
    MmioWhitelist = [ ];
    Patch = [ ];

    # Quirk changes based on https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/coffee-lake-plus.html#booter
    Quirks = {
      DevirtualiseMmio = true;
      EnableWriteUnprotector = false;
      ProtectUefiServices = true;
      RebuildAppleMemoryMap = true;
      SyncRuntimePermissions = true;
    };
  };
}
