return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    --    "nvim-tree/nvim-web-devicons",
    "echasnovski/mini.icons",
  },

  opts = {
    debug = true,
    file_types = { "markdown" },
    --    checkbox = {
    --      enabled = true,
    --      render_modes = false,
    --      icons = {
    --        checked = "✓",
    --        unchecked = "✗",
    --      },
    --    },
    --    code_block = {
    --      enabled = true,
    --      icons = {
    --        collapsed = "▶",
    --        expanded = "▼",
    --      },
    --    },
    --    table = {
    --      enabled = true,
    --      icons = {
    --        collapsed = "▶",
    --        expanded = "▼",
    --      },
    --    },
  },

  config = function()
    require("render-markdown").enable()
  end
}
