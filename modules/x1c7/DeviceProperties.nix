{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.DeviceProperties = {
    # whatevergreen GPU patching
    Add = {
      "PciRoot(0x0)/Pci(0x2,0x0)" = {
        "AAPL,ig-platform-id" = mkData "AACbPg==";
        "device-id" = mkData "mz4AAA==";
        "framebuffer-patch-enable" = mkData "AQAAAA==";
        "framebuffer-stolenmem" = mkData "AAAwAQ==";
        "framebuffer-fbmem" = mkData "AACQAA==";
      };
    };
    Delete = { };
  };
}
