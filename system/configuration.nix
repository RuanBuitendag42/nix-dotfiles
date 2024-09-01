{ config, pkgs, inputs, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    kernelModules = [ "ntfs3" ];
  };

  # Automount external drive
  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/F8C2987BC2983FB4";
    fsType = "ntfs3";
    options = [ "defaults" "noatime" "uid=1000" "gid=1000" ];
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

  # Extra Portal Configuration
  xdg = {
    portal = {
      enable = true;
      wlr.enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
        xdg-desktop-portal
      ];
      configPackages = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
        xdg-desktop-portal
      ];
      config = {
        common.default = [ "gtk" ];
      };
    };
  };


  services = {
    xserver = {
      # Enable the X11 windowing system. TRUE will enable KDE
      # You can disable this if you're only using the Wayland session.
      enable = false;
      xkb = {
        layout = "za";
        variant = "";
      };
    };
    greetd = {
      enable = true;
      vt = 3;
      settings = {
        default_session = {
          # Wayland Desktop Manager is installed only for user ryan via home-manager!
          user = "ruanb";
          # .wayland-session is a script generated by home-manager, which links to the current wayland compositor(sway/hyprland or others).
          # with such a vendor-no-locking script, we can switch to another wayland compositor without modifying greetd's config here.
          # command = "$HOME/.wayland-session"; # start a wayland session directly without a login manager
          command = ''
            ${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks --user-menu --cmd hyprland
          ''; # start Hyprland with a TUI login manager
        };
      };
    };

    # Enable the KDE Plasma Desktop Environment.
    # displayManager.sddm.enable = true;
    # desktopManager.plasma6.enable = true;

    # Enable CUPS to print documents.
    printing.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;

      # use the example session manager (no others are packaged yet so this is enabled by default,
      # no need to redefine it in your config for now)
      #media-session.enable = true;
    };

  };

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;

  # Wayland related
  security.polkit.enable = true;
  hardware.graphics.enable = true;

  # I use zsh btw
  environment.shells = with pkgs; [ zsh ];
  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

  #### USER CONFIG FROM HERE ###
  users = {
    users.ruanb = {
      isNormalUser = true;
      description = "Ruan Buitendag";
      extraGroups = [ "networkmanager" "wheel" ];
    };
    defaultUserShell = pkgs.zsh;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    ### HOME-MANAGER ###
    home-manager

    ### SHELL ##
    zsh
    zsh-powerlevel10k
    vim
    wget
    gh
    git
    lazygit
    neofetch
    ripgrep
    imagemagick
    tree

    ### NEOVIM ###
      # required
    gcc clang cl zig

    ### PROGRAMS ###
    kitty
    spotify
    spotify-tray
    firefox
    vesktop
    nautilus
    pavucontrol

    ### HYPRLAND ###
    waybar
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    })
    )
    dunst
    libnotify
    swww
    rofi-wayland
    greetd.tuigreet
    wl-clipboard
    meson
    wallust

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
	#      auto-optimise-store = true;
	#      gc = {
	#        automatic = true;
	# dates = "weekly";
	# options = "--delete-older-than 7d";
	#      };
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

}
