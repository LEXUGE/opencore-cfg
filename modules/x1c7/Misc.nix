{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Misc = {
    Boot.HideAuxiliary = true;
    Boot.PollAppleHotKeys = true;

    # Adapted fom https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#debug
    Debug = {
      AppleDebug = false;
      ApplePanic = true;
      DisableWatchDog = true;
      # the suggested value 67 slows down boot time so much
      Target = 0;
    };

    Entries = [ ];

    Security = {
      AuthRestart = true;
      AllowSetDefault = true;
      BlacklistAppleUpdate = true;
      ScanPolicy = 0;
      SecureBootModel = "Default";
      Vault = "Optional";
    };

    # Only enable CleanNvram.efi
    Tools."CleanNvram.efi".Enabled = true;
  };
}
