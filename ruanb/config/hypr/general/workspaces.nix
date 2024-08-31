{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    # Example windowrule v1
    # windowrule = "float, ^(kitty)$";

    # Example windowrule v2
    # windowrulev2 = "float,class:^(kitty)$,title:^(kitty)$";

    windowrulev2 = "suppressevent maximize, class:.*"; # You'll probably like this.
  };
}
