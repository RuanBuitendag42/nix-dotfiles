{
  programs.waybar = {
    style =
      /*
      css
      */
      ''
        /*
        *
        * Catppuccin Mocha palette
        * Maintainer: rubyowo
        *
        */

        @define-color base   #1e1e2e;
        @define-color mantle #181825;
        @define-color crust  #11111b;

        @define-color text     #cdd6f4;
        @define-color subtext0 #a6adc8;
        @define-color subtext1 #bac2de;

        @define-color surface0 #313244;
        @define-color surface1 #45475a;
        @define-color surface2 #585b70;

        @define-color overlay0 #6c7086;
        @define-color overlay1 #7f849c;
        @define-color overlay2 #9399b2;

        @define-color blue      #89b4fa;
        @define-color lavender  #b4befe;
        @define-color sapphire  #74c7ec;
        @define-color sky       #89dceb;
        @define-color teal      #94e2d5;
        @define-color green     #a6e3a1;
        @define-color yellow    #f9e2af;
        @define-color peach     #fab387;
        @define-color maroon    #eba0ac;
        @define-color red       #f38ba8;
        @define-color mauve     #cba6f7;
        @define-color pink      #f5c2e7;
        @define-color flamingo  #f2cdcd;
        @define-color rosewater #f5e0dc;

        * {
            /* `otf-font-awesome` is required to be installed for icons */
            font-family: FiraCode Nerd Font;
            font-size: 14px;
        }

        window#waybar {
            background-color: #1E1E2E;
            color: #ffffff;
            /*transition-property: background-color;*/
            transition-duration: .5s;
        }

        window#waybar.hidden {
            opacity: 0.2;
        }

        /*
        window#waybar.empty {
            background-color: transparent;
        }
        window#waybar.solo {
            background-color: #FFFFFF;
        }
        */

        window#waybar.termite {
            background-color: #3F3F3F;
        }

        window#waybar.chromium {
            background-color: #000000;
            border: none;
        }

        button {
            /* Use box-shadow instead of border so the text isn't offset */
            box-shadow: inset 0 -3px transparent;
            /* Avoid rounded borders under each button name */
            border: none;
            border-radius: 0;
        }

        /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */

        #workspaces button {
            padding: 0 5px;
            border-radius: 5em / 5em;
            background-color: @surface0;
            color: @teal;
            margin: 2px;
            font-weight: bold;
        }


        #clock,
        #battery,
        #cpu,
        #memory,
        #temperature,
        #network,
        #pulseaudio,
        #keyboard-state,
        #mpd {
            padding: 0 10px;
            color: @peach;
            background-color: @surface0;
            font-weight: bold;
        }

        #memory {
           color: @yellow;
        }

        #window,
        #workspaces {
            margin: 0 4px;
            background-color: transparent;
            font-weight:bold;
            border-radius: 5em / 5em;
            padding: 0 10px;
            color: @teal;
        }


        /* If workspaces is the leftmost module, omit left margin */
        .modules-left > widget:first-child > #workspaces {
            margin-left: 0;
        }

        /* If workspaces is the rightmost module, omit right margin */
        .modules-right > widget:last-child > #workspaces {
            margin-right: 0;
        }

        #clock {
          border-top-right-radius: 5em 5em;
          border-bottom-right-radius: 5em 5em;
          color: @sky;
        }


        @keyframes blink {
            to {
                background-color: #ffffff;
                color: #000000;
            }
        }

        label:focus {
            background-color: #000000;
        }


        #network.disconnected {
            background-color: #f53c3c;
        }

        #pulseaudio {
            border-top-left-radius: 5em 5em;
            border-bottom-left-radius: 5em 5em;
            color: @pink;
        }

        #pulseaudio.muted {
            background-color: #90b1b1;
            color: #2a5c45;
        }

        #temperature.critical {
            background-color: #eb4d4b;
        }

        #temperature {
           color: @green;
        }

        #keyboard-state {
            padding: 0 0px;
            min-width: 16px;
            color: @mauve;
        }


        #keyboard-state > label {
            padding: 0 5px;
        }

        #keyboard-state > label.locked {
            background: rgba(0, 0, 0, 0.2);
        }
      '';
  };
}
