{pkgs, ...}: {
  # Enables the usbmuxd daemon, which allows for mounting of iOS devices
  services.usbmuxd.enable = true;

  # Enables the ifuse daemon, which allows for mounting of iOS devices
  environment.systemPackages = with pkgs; [
    libimobiledevice
    ifuse # optional, to mount using 'ifuse'
  ];
}
