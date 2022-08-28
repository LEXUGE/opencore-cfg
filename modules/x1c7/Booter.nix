{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Booter = {
    # Not used and not enabled in sample.plist, can safely be empty.
    MmioWhitelist = [ ];
    Patch = [ ];

    Quirks = {
      AllowRelocationBlock = false;
      AvoidRuntimeDefrag = true;
      DevirtualiseMmio = true;
      DisableSingleUser = false;
      DisableVariableWrite = false;
      DiscardHibernateMap = false;
      EnableSafeModeSlide = true;
      EnableWriteUnprotector = false;
      ForceBooterSignature = false;
      ForceExitBootServices = false;
      ProtectMemoryRegions = false;
      ProtectSecureBoot = false;
      ProtectUefiServices = true;
      ProvideCustomSlide = true;
      ProvideMaxSlide = 0;
      RebuildAppleMemoryMap = true;
      ResizeAppleGpuBars = -1;
      # Set to false by dortania guide, need testing
      SetupVirtualMap = true;
      SignalAppleOS = false;
      SyncRuntimePermissions = true;
    };
  };
}
