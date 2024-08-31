{ config, pkgs, ... }:
{
  programs.waybar = {
    style = ''
            @define-color foreground #F5DFD0;
            @define-color background rgba(7,6,8,0.50);
            @define-color cursor #F5DFD0;

            @define-color color0 #070608;
            @define-color color1 #3D1A26;
            @define-color color2 #522329;
            @define-color color3 #4F2126;
            @define-color color4 #723033;
            @define-color color5 #9A4C42;
            @define-color color6 #B47850;
            @define-color color7 #E9C9B4;
            @define-color color8 #A38C7E;
            @define-color color9 #522334;
            @define-color color10 #6F2F39;
            @define-color color11 #682C30;
            @define-color color12 #964043;
            @define-color color13 #BD6F65;
            @define-color color14 #D0A990;
            @define-color color15 #E9C9B4;

            * {
      	all: unset; /*this is really important to isolate waybar from gtk*/
      	font-family: "MesloLGS Nerd Font";
      	font-size: 15px;
      	font-weight: normal;
      }

      /* COLORS USED */
      /* font-color: @foreground */
      /* widgets-background: @background */
      /* quicklinks-background: @color1 */
      /* workspaces-background: @color1 */
      /* workspaces-acticve: @color11 */
      /* workspaces-inactive: @color3 */
      /* all-hovers: @color11 */

      /* TOOLTIP */
      tooltip {
      	background: @background;
          border: 1.5px solid @color5;
      	border-radius: 8px;
          padding: 2px 100px;
      }

      /* COMMON CONFIGS */
      #image,
      #mpd *,
      #taskbar *,
      #quicklinks-right *,
      #quicklinks-left * {
          border-radius: 8px;
          color: @foreground;
      }

      #clock,
      #hardware,
      #network,
      #workspaces,
      #pulseaudio,
      #taskbar,
      #quicklinks-right,
      #quicklinks-left {
          color: @foreground;
          border-radius: 10px;
          background: @background;
          padding: 3px 7px;
          margin: 4.5px;
          opacity: 0.9;
      }

      /* CUSTOM CONFIGS */

      /* workspaces */
      #workspaces {
          background: @color1;
          margin: 4px 5px;
          padding: 1.5px;
          border-radius: 15px;
      }
      #workspaces button {
          background: @color3;
          min-width: 25px;
          margin: 2px;
          border-radius: 45%; /* circle */
      	transition: all 0.2s ease-in-out;
          padding: 1px;
          padding-left: 4px; /* because browser and filebrowser icons are NOT fully centered */
          opacity: 0.6;
      }
      #workspaces button:nth-child(first) {
          padding-left: 0px; /* because code icon IS fully centered */
      }
      #workspaces button:hover {
          opacity: 0.8;
          background: @color11;
      }
      #workspaces button.active { 
          background: @color11;
          min-width: 50px;
          border-radius: 10px;
      	transition: all 0.2s ease-in-out;
          opacity: 0.9;
      }
      #workspaces button.urgent {
      	color: @foreground;
      	transition: all 0.3s ease-in-out;
      }

      /* quicklinks  */
      #quicklinks-right,
      #quicklinks-left {
          background: @color1;
      }
      #quicklinks-right {
          margin-right: 7px;
      }
      #quicklinks-left {
          margin-left: 7px;
      }
      #quicklinks-right *,
      #quicklinks-left * {
          padding: 0px 5px;
      	transition: all 0.2s ease-in-out;
      }
      #quicklinks-right *:hover,
      #quicklinks-left *:hover {
          background: @color11;
      }

      /* taskbar */
      #taskbar {
          padding: 0px;
      }
      #taskbar * {
          margin: 2px 3px;
      }
      #taskbar *:hover {
          background: @color11;
      }

      /* power-menu */
      #custom-power-menu {
          color: #f7768e;
          padding-right: 0px;
          padding-left: 3px;
      }

      /* image */
      #image {
          margin: 0px;
          padding: 0px;
      }

      #cava {
          background: @background;
      }
    '';
  };
}
