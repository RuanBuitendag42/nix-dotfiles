{
  programs.nixvim = {
    plugins.dashboard = {
      enable = true;
      settings = {
        config = {
          header = [
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
          shortcut = [
            {
              actions = "NvimTreeToggle";
              desc = "   > Toggle file explorer";
              group = "String";
              key = "SPC ee";
            }
            {
              actions = "Telescope find_files";
              desc = " 󰱼  > Find File";
              group = "String";
              key = "SPC sf";
            }
            {
              actions = "Telescope live_grep";
              desc = "   > Find Word";
              group = "String";
              key = "SPC fs";
            }
            {
              actions = "SessionRestore";
              desc = " 󰁯  > Restore Session For Current Directory";
              group = "String";
              key = "SPC wr";
            }
            {
              actions = "qa";
              desc = "   > Quit NVIM";
              group = "String";
              key = "q";
            }
          ];
        };
      };
    };
  };
}
