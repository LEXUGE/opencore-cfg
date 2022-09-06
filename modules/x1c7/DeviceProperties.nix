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
        "enable-hdmi20" = mkData "AQAAAA==";
        "framebuffer-con0-enable" = mkData "AQAAAA==";
				"framebuffer-con0-alldata" = mkData "AAAIAAIAAACYAAAA";
        "framebuffer-con1-enable" = mkData "AQAAAA==";
				"framebuffer-con1-alldata" = mkData "AQEJAAAIAACHAQAA";
        "framebuffer-con2-enable" = mkData "AQAAAA==";
				"framebuffer-con2-alldata" = mkData "AgQKAAAEAACHAQAA";
        # Patch the ports' connector-type to HDMI
        # "framebuffer-con1-type" = mkData "AAgAAA=="; # <00080000>
        # "framebuffer-con2-type" = mkData "AAgAAA=="; # <00080000>
      };
    };
    Delete = { };
  };
}
