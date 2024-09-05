{ config, pkgs, ... }:
{
  # Declare and enable the systemd services for cliphist
  systemd.user.services = {
    cliphist = {
      description = "Cliphist clipboard manager service";
      serviceConfig = {
        ExecStart = "${pkgs.cliphist}/bin/cliphist daemon";
        Restart = "always";
      };
      wantedBy = [ "default.target" ];
    };

    cliphist-images = {
      description = "Cliphist image handler";
      serviceConfig = {
        ExecStart = "${pkgs.cliphist}/bin/cliphist-images";
        Restart = "always";
      };
      wantedBy = [ "default.target" ];
    };
  };
}
