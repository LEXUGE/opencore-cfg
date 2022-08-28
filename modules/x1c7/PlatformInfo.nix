{ lib, pkgs, ... }: with lib.oc.plist; {
  oceanix.opencore.settings.PlatformInfo = {
    Automatic = true;
    CustomMemory = false;
    Generic = {
      AdviseFeatures = false;
      MLB = "C020034044NN9PRA8";
      MaxBIOSVersion = false;
      ProcessorType = 0;
      ROM = "BPE+2FWl";
      SpoofVendor = true;
      SystemMemoryStatus = "Auto";
      SystemProductName = "MacBookPro16,1";
      SystemSerialNumber = "C02C4LZAMD6N";
      SystemUUID = "37BB5C91-EBDC-4811-B395-3931F6137143";
    };

    UpdateDataHub = true;
    UpdateNVRAM = true;
    UpdateSMBIOS = true;
    UpdateSMBIOSMode = "Create";
    UseRawUuidEncoding = false;
  };
}
