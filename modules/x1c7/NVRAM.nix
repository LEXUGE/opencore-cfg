{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.NVRAM = {
    Add = {
      # Not working, don't know why
      # "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14".UIScale = 2;
      "7C436110-AB2A-4BBB-A880-FE41995C9F82" = {
        "#INFO (prev-lang:kbd)" = "en:252 (ABC), set 656e3a323532";
        boot-args = "debug=0x100 alcid=71 keepsyms=1 rtcfx_exclude=0D-FF";
        csr-active-config = mkData "AAAAAA==";
        "prev-lang:kbd" = "en-US:0";
        run-efi-updater = "No";
      };
    };

    WriteFlash = true;
  };
}
