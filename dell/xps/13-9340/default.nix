{
  config,
  lib,
  ...
}: {
  imports = [
    ../../../common/cpu/intel/meteor-lake
    ../../../common/pc/laptop
    ../../../common/pc/ssd
  ];

  services = {
    fwupd.enable = lib.mkDefault true;
    thermald.enable = lib.mkDefault true;
    tuned.enable = lib.mkDefault true;
    power-profiles-daemon.enable = lib.mkForce false;
    tlp.enable = lib.mkForce false;
  };

  powerManagement.enable = lib.mkDefault true;

  boot = {
    kernelModules = [
      "kvm-intel"
    ];
  };
}
