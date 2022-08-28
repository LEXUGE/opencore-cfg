{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.NVRAM = {
    Add = {
      "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14".DefaultBackgroundColor = mkData "AAAAAA==";
      "4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102".rtc-blacklist = mkData "";
      "7C436110-AB2A-4BBB-A880-FE41995C9F82" = {
        "#INFO (prev-lang:kbd)" = "en:252 (ABC), set 656e3a323532";
        ForceDisplayRotationInEFI = 0;
        SystemAudioVolume = mkData "Rg==";
        boot-args = "-v debug=0x100 alcid=71 keepsyms=1";
        csr-active-config = mkData "AAAAAA==";
        "prev-lang:kbd" = "en-US:0";
        run-efi-updater = "No";
      };
    };

    Delete = {
      "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14" = [ "DefaultBackgroundColor" ];
      "4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102" = [ "rtc-blacklist" ];
      "7C436110-AB2A-4BBB-A880-FE41995C9F82" = [ "boot-args" "ForceDisplayRotationInEFI" ];
    };

    WriteFlash = true;
  };
}
