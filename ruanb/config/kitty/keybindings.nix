{ config, pkgs, ... }:
{
  programs.kitty.settings = {
    "ctrl+shift+t" = "new_tab"; # Create a new tab
    "ctrl+shift+w" = "close_tab"; # Close the current tab
    "ctrl+shift+tab" = "next_tab"; # Switch to the next tab
    "ctrl+shift+iso_left_tab" = "previous_tab"; # Switch to the previous tab
    "ctrl+shift+r" = "rename_tab"; # Rename the current tab
    "ctrl+shift+," = "move_tab_left"; # Move the current tab to the left
    "ctrl+shift+." = "move_tab_right"; # Move the current tab to the right
  };
}
