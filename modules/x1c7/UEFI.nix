{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.UEFI = {
    # No need to change MinDate or MinVersion since we are on Big Sur
    APFS = {
      EnableJumpstart = true;
      GlobalConnect = false;
      HideVerbose = true;
      JumpstartHotPlug = false;
      MinDate = 0;
      MinVersion = 0;
    };

    # Unmodified from sample.plist
    AppleInput = {
      AppleEvent = "Builtin";
      CustomDelays = false;
      GraphicsInputMirroring = true;
      KeyInitialDelay = 50;
      KeySubsequentDelay = 5;
      PointerPollMask = -1;
      PointerPollMax = 80;
      PointerPollMin = 10;
      PointerSpeedDiv = 1;
      PointerSpeedMul = 1;
    };

    # Unmodified from sample.plist
    Audio = {
      AudioCodec = 0;
      AudioDevice = "PciRoot(0x0)/Pci(0x1b,0x0)";
      AudioOutMask = 1;
      AudioSupport = false;
      DisconnectHda = false;
      MaximumGain = -15;
      MinimumAssistGain = -30;
      MinimumAudibleGain = -55;
      PlayChime = "Auto";
      ResetTrafficClass = false;
      SetupDelay = 0;
    };

    ConnectDrivers = true;

    Drivers."HfsPlus.efi".Enabled = true;
    Drivers."OpenRuntime.efi".Enabled = true;

    # Unmodified from sample.plist
    Input = {
      KeyFiltering = false;
      KeyForgetThreshold = 5;
      KeySupport = true;
      KeySupportMode = "Auto";
      KeySwap = false;
      PointerSupport = false;
      PointerSupportMode = "ASUS";
      TimerResolution = 50000;
    };

    # Unmodified from sample.plist
    Output = {
      ClearScreenOnModeSwitch = false;
      ConsoleMode = "";
      DirectGopRendering = false;
      ForceResolution = false;
      GopPassThrough = "Disabled";
      IgnoreTextInGraphics = false;
      ProvideConsoleGop = true;
      ReconnectGraphicsOnConnect = false;
      ReconnectOnResChange = false;
      ReplaceTabWithSpace = false;
      Resolution = "Max";
      SanitiseClearScreen = false;
      TextRenderer = "BuiltinGraphics";
      UIScale = 0;
      UgaPassThrough = false;
    };

    # Unmodified from sample.plist
    ProtocolOverrides = {
      AppleAudio = false;
      AppleBootPolicy = false;
      AppleDebugLog = false;
      AppleEg2Info = false;
      AppleFramebufferInfo = false;
      AppleImageConversion = false;
      AppleImg4Verification = false;
      AppleKeyMap = false;
      AppleRtcRam = false;
      AppleSecureBoot = false;
      AppleSmcIo = false;
      AppleUserInterfaceTheme = false;
      DataHub = false;
      DeviceProperties = false;
      FirmwareVolume = true;
      HashServices = false;
      OSInfo = false;
      UnicodeCollation = false;
    };

    Quirks = {
      ActivateHpetSupport = false;
      DisableSecurityPolicy = false;
      EnableVectorAcceleration = true;
      EnableVmx = false;
      ExitBootServicesDelay = 0;
      ForceOcWriteFlash = false;
      ForgeUefiSupport = false;
      IgnoreInvalidFlexRatio = false;
      ReleaseUsbOwnership = true;
      ReloadOptionRoms = false;
      RequestBootVarRouting = true;
      ResizeGpuBars = -1;
      TscSyncTimeout = 0;
      UnblockFsConnect = false;
    };
  };
}
