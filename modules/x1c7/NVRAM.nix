{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.NVRAM = {
    Add = {
      "7C436110-AB2A-4BBB-A880-FE41995C9F82" = {
        "#INFO (prev-lang:kbd)" = "en:252 (ABC), set 656e3a323532";
        boot-args = "-v debug=0x100 alcid=71 keepsyms=1";
        csr-active-config = mkData "AAAAAA==";
        "prev-lang:kbd" = "en-US:0";
        run-efi-updater = "No";
      };
    };

    WriteFlash = true;
  };
}
