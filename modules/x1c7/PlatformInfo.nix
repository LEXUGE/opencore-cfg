{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.PlatformInfo = {
    Automatic = true;
    Generic = {
      MLB = "C020034044NN9PRA8";
      ROM = "BPE+2FWl";
      SystemProductName = "MacBookPro16,1";
      SystemSerialNumber = "C02C4LZAMD6N";
      SystemUUID = "37BB5C91-EBDC-4811-B395-3931F6137143";
    };
  };
}
