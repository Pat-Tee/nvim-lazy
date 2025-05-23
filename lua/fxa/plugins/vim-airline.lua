return {
  "vim-airline/vim-airline",
  dependencies = { "vim-airline/vim-airline-themes", "tpope/vim-fugitive" },
  lazy = false,
  priority = 1000,
  opts = {
    theme = "violet",
  },
  config = function(_, opts)
    vim.g.airline_theme = opts.theme
    vim.g.airline_extensions = { "branch" }
  end
}
