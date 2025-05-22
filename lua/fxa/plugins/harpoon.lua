return {
  "theprimeagen/harpoon",
  keys = {
    {
      "<leader>a",
      ":lua require('harpoon.mark').add_file()<CR>",
      desc = "harpoon add file",
    },
    {
      "<C-e>",
      ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
      desc = "harpoon quick menu",
    },
    {
      "<C-h>",
      ":lua require('harpoon.ui').nav_file(1)<CR>",
      desc = "harpoon file 1",
    },
    {
      "<C-t>",
      ":lua require('harpoon.ui').nav_file(2)<CR>",
      desc = "harpoon file 2",
    },
    {
      "<C-n>",
      ":lua require('harpoon.ui').nav_file(3)<CR>",
      desc = "harpoon file 3",
    },
    {
      "<C-s>",
      ":lua require('harpoon.ui').nav_file(4)<CR>",
      desc = "harpoon file 4",
    },
  },
}
