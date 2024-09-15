{
  config,
  pkgs,
  ...
}: {
  programs.kitty.settings = {
    "ctrl+shift+t" = "new_tab"; # Create a new tab
    "ctrl+shift+w" = "close_tab"; # Close the current tab
    "ctrl+shift+]" = "next_tab"; # Switch to the next tab
    "ctrl+shift+[" = "previous_tab"; # Switch to the previous tab
    "ctrl+shift+r" = "rename_tab"; # Rename the current tab
    "ctrl+shift+," = "move_tab_left"; # Move the current tab to the left
    "ctrl+shift+." = "move_tab_right"; # Move the current tab to the right
  };
}
