return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>pv",
      ":NvimTreeOpen<CR>",
      desc = "Open NvimTree",
    },
    {
      "-",
      ":lua require('nvim-tree.api').tree.change_root_to_parent()<CR>",
      desc = "Up",
    },
    {
      "?",
      ":lua require('nvim-tree.api').tree.toggle_help()<CR>",
      desc = "Help",
    },
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        signcolumn = "no",
        width = 24,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
    vim.api.nvim_set_hl(0, 'NvimTreeWindowPicker', { bg = 'NONE'})
  end,
}
