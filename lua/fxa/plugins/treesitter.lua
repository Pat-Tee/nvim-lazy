return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "go",
      "rust",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "javascript",
      "typescript",
      "markdown",
      "markdown_inline",
      "sql",
    },

    lazy = false,
    priority = 1000,
    sync_install = false,
    auto_install = true,

    event = {
      "BufReadPost",
      "BufNewFile",
    },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
