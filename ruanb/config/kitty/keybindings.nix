{ config, pkgs, ... }:
{
  programs.kitty.settings = {
    map "ctrl+shift+t" "new_tab" # Create a new tab
    map "ctrl+shift+w" "close_tab" # Close the current tab
    map "ctrl+shift+tab" "next_tab" # Switch to the next tab
    map "ctrl+shift+iso_left_tab" "previous_tab" # Switch to the previous tab
    map "ctrl+shift+r" "rename_tab" # Rename the current tab
    map "ctrl+shift+," "move_tab_left" # Move the current tab to the left
    map "ctrl+shift+." "move_tab_right" # Move the current tab to the right
  };
}
