{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./fhs.nix
    ./usb.nix
    ../stylix.nix
  ];

  # Bootloader.
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # Automount external drive
  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/48211d70-3cce-48cc-b37f-ebc9eb869079";
    fsType = "ext4";
    # options = ["defaults" "noatime" "uid=1000" "gid=1000"];
  };

  networking = {
    hostName = "nixos"; # Define your hostname.
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    # Enable networking
    networkmanager.enable = true;
  };

  # Set your time zone.
  time.timeZone = "Africa/Johannesburg";
  i18n.defaultLocale = "en_ZA.UTF-8";

  services = {
    printing.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # jack.enable = true; # Only enable if audio recording software is used
    };
  };

  ### GTK Portals ###
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
    config.commen.default = "*";
  };
  programs.dconf.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;

  # Wayland related
  security.polkit.enable = true;
  hardware.graphics.enable = true;

  # I use zsh btw
  environment.shells = with pkgs; [zsh];
  programs.zsh.enable = true;

  #### USER CONFIG FROM HERE ###
  users = {
    users.ruanb = {
      isNormalUser = true;
      description = "Ruan Buitendag";
      extraGroups = ["networkmanager" "wheel" "adbusers" "docker" "plugdev" "audio" "video" "sound"];
    };
    defaultUserShell = pkgs.zsh;
  };

  fonts = {
    enableDefaultPackages = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    ### NixOS
    nh
    nix-output-monitor
    nvd

    ### HOME-MANAGER ###
    home-manager

    ### SYSTEM ###
    gcc
    clang
    cl
    zig
    cage
    gparted
    nodejs

    gh
  ];

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    };
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
    };
  };
}
