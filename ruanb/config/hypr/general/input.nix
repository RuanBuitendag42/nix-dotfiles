{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "za";
      kb_variant = "";
      kb_model = "";
      kb_options = "";
      kb_rules = "";

      follow_mouse = 1;

      sensitivity = -0.6; # -1.0 - 1.0, 0 means no modification.

      touchpad = {
        natural_scroll = false;
      };

      repeat_delay = 200;
      repeat_rate = 50;
    };

    gestures = {
      workspace_swipe = false;
    };

    # Example per-device config
    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.6;
    };
  };
}
