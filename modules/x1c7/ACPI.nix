{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.ACPI = {
    Add = {
      "SSDT-AWAC.aml".Enabled = true;
      "SSDT-EC-USBX-LAPTOP.aml".Enabled = true;
      "SSDT-PLUG-DRTNIA.aml".Enabled = true;
      "SSDT-PNLF.aml".Enabled = true;
      "SSDT-XOSI.aml".Enabled = true;
    };

    # Tweaks like `Delete CpuPm` are not enabled and not taking effect. Therefore, we can safely leave it empty here.
    Delete = [
    ];

    Patch = [
      {
        Base = "";
        BaseSkip = 0;
        Comment = "Change _OSI to XOSI";
        Count = 0;
        Enabled = true;
        Find = mkData "X09TSQ==";
        Limit = 0;
        Mask = mkData "";
        OemTableId = mkData "";
        Replace = mkData "WE9TSQ==";
        ReplaceMask = mkData "";
        Skip = 0;
        TableLength = 0;
        TableSignature = mkData "";
      }
    ];
  };
}
