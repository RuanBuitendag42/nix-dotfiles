{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      {
        plugin = vim-test;
        config =
          # lua
          ''
            lua
              require('vim-test/vim-test').setup({
              dependencies = {
                "preservim/vimux"
              },
              vim.keymap.set('n', '<leader>tr', ':TestNearest<CR>'),

              vim.cmd("let test#strategy = 'vimux'")
            })
          '';
      }
    ];
  };
}
