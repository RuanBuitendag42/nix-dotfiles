{config, ...}: {
  programs.rofi = {
    enable = true;
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        bg-col = mkLiteral "#1E1D2F";
        bg-col-light = mkLiteral "#1E1D2F";
        border-col = mkLiteral "#1E1D2F";
        selected-col = mkLiteral "#1E1D2F";
        peach = mkLiteral "#FAB387";
        fg-col = mkLiteral "#D9E0EE";
        fg-col2 = mkLiteral "#F28FAD";
        grey = mkLiteral "#D9E0EE";
        width = 600;
      };
      extraConfig =
        /*
        rasi
        */
        ''
          configuration{
            modi: "run,drun";
            lines: 6;
            font: "FiraCode Nerd Font 12";
            show-icons: true;
            icon-theme: "Oranchelo";
            terminal: "st";
            drun-display-format: "{icon} {name}";
            location: 0;
            disable-history: false;
            hide-scrollbar: true;
            display-drun: "   Apps ";
            display-run: "   Run ";
            display-window: " 﩯  window";
            display-Network: " 󰤨  Network";
            sidebar-mode: true;
          }
          element-text, element-icon , mode-switcher {
              background-color: inherit;
              text-color:       inherit;
          }

          window {
              height: 360px;
              border: 3px;
              border-radius:6px;
              background-color: @bg-col;
              border-color:@peach;
          }

          mainbox {
              background-color: @bg-col;
          }

          inputbar {
              children: [prompt,entry];
              background-color: @bg-col;
              border-radius: 6px;
              padding: 2px;
          }

          prompt {
              background-color: @peach;
              padding: 6px;
              text-color: @bg-col;
              border-radius: 6px;
              margin: 20px 0px 0px 20px;
          }

          textbox-prompt-colon {
              expand: false;
              str: ":";
          }

          entry {
              padding: 6px;
              margin: 20px 10px 0px 10px;
              text-color: @fg-col;
              background-color: @bg-col;
              border: 2px;
              border-radius: 3px;
              border-color: @peach;
              placeholder:"Search";

          }

          listview {
              border: 0px 0px 0px;
              padding: 6px 0px 0px;
              margin: 10px 0px 0px 20px;
              columns: 2;
              background-color: @bg-col;
          }

          element {
              padding: 5px;
              background-color: @bg-col;
              text-color: @fg-col  ;
          }

          element-icon {
              size: 25px;
          }

          element selected {
              background-color:  @selected-col ;
              text-color: @fg-col2  ;
          }

          mode-switcher {
              spacing: 0;
            }

          button {
              padding: 10px;
              background-color: @bg-col-light;
              text-color: @grey;
              vertical-align: 0.5;
              horizontal-align: 0.5;
          }

          button selected {
            background-color: @bg-col;
            text-color: @peach;
          }
        '';
    };
  };
}
