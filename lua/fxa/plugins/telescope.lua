return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
  },

  keys = {
    {
      "<leader>ff",
      ":Telescope find_files<CR>",
      desc = "Telescope find files",
    },
    {
      "<leader>fg",
      ":Telescope live_grep<CR>",
      desc = "Telescope live grep",
    },
    {
      "<leader>fb",
      ":Telescope buffers<CR>",
      desc = "Telescope buffers",
    },
    {
      "<leader>fh",
      ":Telescope help_tags<CR>",
      desc = "Telescope help tags",
    },
  },
}
