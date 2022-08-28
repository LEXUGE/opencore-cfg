{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Kernel = {
    Add = {
      "AirportItlwm.kext".Enabled = true;
      "AppleALC.kext".Enabled = true;
      "BrightnessKeys.kext".Enabled = true;
      "ECEnabler.kext".Enabled = true;
      "IntelBluetoothFirmware.kext".Enabled = true;
      "IntelBluetoothInjector.kext".Enabled = true;
      "IntelBTPatcher.kext".Enabled = true;
      "IntelMausi.kext".Enabled = true;
      "Lilu.kext".Enabled = true;
      "NVMeFix.kext".Enabled = true;
      "SMCBatteryManager.kext".Enabled = true;
      "SMCProcessor.kext".Enabled = true;
      "SMCSuperIO.kext".Enabled = true;
      "USBToolBox.kext".Enabled = true;
      # "UTBDefault.kext".Enabled = true;
      "UTBMap.kext".Enabled = true;
      "VirtualSMC.kext".Enabled = true;
      "VoodooI2C.kext".Enabled = true;
      "VoodooI2CHID.kext".Enabled = true;
      "VoodooI2CSynaptics.kext".Enabled = true;
      "VoodooPS2Controller.kext".Enabled = true;
      "WhateverGreen.kext".Enabled = true;
    };

    # Not used and disabled in sample.plist
    Block = [ ];
    Force = [ ];
    Patch = [ ];

    # i7-10710U CPU patching
    Emulate = {
      Cpuid1Data = mkData "7AYIAAAAAAAAAAAAAAAAAA==";
      Cpuid1Mask = mkData "/////wAAAAAAAAAAAAAAAA==";
      DummyPowerManagement = false;
      MaxKernel = "";
      MinKernel = "";
    };

    Quirks = {
      AppleCpuPmCfgLock = false;
      AppleXcpmCfgLock = true;
      AppleXcpmExtraMsrs = false;
      AppleXcpmForceBoost = false;
      CustomPciSerialDevice = false;
      CustomSMBIOSGuid = false;
      DisableIoMapper = false;
      DisableLinkeditJettison = true;
      DisableRtcChecksum = false;
      ExtendBTFeatureFlags = false;
      ExternalDiskIcons = false;
      ForceAquantiaEthernet = false;
      ForceSecureBootScheme = false;
      IncreasePciBarSize = false;
      LapicKernelPanic = false;
      LegacyCommpage = false;
      PanicNoKextDump = true;
      PowerTimeoutKernelPanic = true;
      ProvideCurrentCpuInfo = false;
      SetApfsTrimTimeout = -1;
      ThirdPartyDrives = false;
      XhciPortLimit = false;
    };

    Scheme = {
      CustomKernel = false;
      FuzzyMatch = true;
      KernelArch = "Auto";
      KernelCache = "Auto";
    };
  };
}
