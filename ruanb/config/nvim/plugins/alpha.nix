{
  programs.nixvim = {
    plugins.alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "Type";
            position = "center";
          };
          type = "text";
          val = [
            "            :h-                                  Nhy`               "
            "           -mh.                           h.    `Ndho               "
            "           hmh+                          oNm.   oNdhh               "
            "          `Nmhd`                        /NNmd  /NNhhd               "
            "          -NNhhy                      `hMNmmm`+NNdhhh               "
            "          .NNmhhs              ```....`..-:/./mNdhhh+               "
            "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               "
            "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                "
            "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       "
            " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        "
            " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         "
            " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        "
            " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       "
            "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      "
            "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     "
            "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    "
            "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    "
            "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   "
            "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   "
            "       //+++//++++++////+++///::--                 .::::-------::   "
            "       :/++++///////////++++//////.                -:/:----::../-   "
            "       -/++++//++///+//////////////               .::::---:::-.+`   "
            "       `////////////////////////////:.            --::-----...-/    "
            "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    "
            "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   "
            "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ "
            "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``"
            "           s-`::--:::------:////----:---.-:::...-.....`./:          "
            "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           "
            "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              "
            "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                "
            "                        .-:mNdhh:.......--::::-`                    "
            "                           yNh/..------..`                          "
            "                                                                    "
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          opts = {
            spacing = 1;
          };
          val = [
            {
              on_press = {
                __raw = "function() vim.cmd('enew') end";
              };
              opts = {
                shortcut = "e";
                position = "center";
                align_shortcut = "right";
                width = 50;
              };
              type = "button";
              val = "  New file";
            }
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "Keyword";
            position = "center";
          };
          type = "text";
          val = "Inspiring quote here.";
        }
      ];
    };
  };
}
