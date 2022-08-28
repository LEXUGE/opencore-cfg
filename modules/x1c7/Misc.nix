{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.Misc = {
    Boot.HideAuxiliary = true;

    # Adapted fom https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#debug
    Debug = {
      AppleDebug = true;
      ApplePanic = true;
      DisableWatchDog = true;
      # the suggested value 67 slows down boot time so much
      Target = 0;
    };

    Entries = [ ];

    Security = {
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
