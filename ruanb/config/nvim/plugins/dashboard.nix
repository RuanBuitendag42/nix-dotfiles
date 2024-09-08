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
          center = [
            {
              actions = "ene";
              desc = "> New File";
              desc_hl = "String";
              icon = "   ";
              key = "e";
              keymap = "e";
            }
            {
              actions = "NvimTreeToggle";
              desc = "> Toggle file explorer";
              desc_hl = "String";
              icon = "   ";
              key = "SPC ee";
              keymap = "SPC ee";
            }
            {
              actions = "Telescope find_files";
              desc = "> Find File";
              desc_hl = "String";
              icon = " 󰱼  ";
              key = "SPC ff";
              keymap = "SPC ff";
            }
            {
              actions = "Telescope live_grep";
              desc = "> Find Word";
              desc_hl = "String";
              icon = "   ";
              key = "SPC fs";
              keymap = "SPC fs";
            }
            {
              actions = "SessionRestore";
              desc = "> Restore Session For Current Directory";
              desc_hl = "String";
              icon = " 󰁯  ";
              key = "SPC wr";
              keymap = "SPC wr";
            }
            {
              actions = "qa";
              desc = "> Quit NVIM";
              desc_hl = "String";
              icon = "   ";
              key = "q";
              keymap = "q";
            }
          ];
        };
      };
    };
  };
}
