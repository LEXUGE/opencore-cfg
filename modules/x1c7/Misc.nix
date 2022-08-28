{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Misc = {
    BlessOverride = [ ];
    Boot = {
      ConsoleAttributes = 0;
      HibernateMode = "None";
      HideAuxiliary = true;
      LauncherOption = "Disabled";
      LauncherPath = "Default";
      PickerAttributes = 17;
      PickerAudioAssist = false;
      PickerMode = "Builtin";
      PickerVariant = "Auto";
      PollAppleHotKeys = false;
      ShowPicker = true;
      TakeoffDelay = 0;
      Timeout = 5;
    };

    # Adapted fom https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#debug
    Debug = {
      AppleDebug = true;
      ApplePanic = true;
      DisableWatchDog = true;
      DisplayDelay = 0;
      DisplayLevel = 2147483650;
      LogModules = "*";
      SysReport = false;
      # the suggested value 67 slows down boot time so much
      Target = 0;
    };

    Entries = [ ];

    Security = {
      AllowSetDefault = true;
      ApECID = 0;
      AuthRestart = false;
      BlacklistAppleUpdate = true;
      DmgLoading = "Signed";
      EnablePassword = false;
      ExposeSensitiveData = 6;
      HaltLevel = 2147483648;
      PasswordHash = mkData "";
      PasswordSalt = mkData "";
      ScanPolicy = 0;
      SecureBootModel = "Default";
      Vault = "Optional";
    };

    Serial = {
      Init = false;
      Overide = false;
    };

    Tools."CleanNvram.efi".Enabled = true;
  };
}
