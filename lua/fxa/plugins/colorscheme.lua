local preferred = "fluoromachine"

local themes = {
  fluoromachine = "maxmx03/fluoromachine.nvim",
  catppuccin = "catppuccin/nvim",
  rosepine = "rose-pine/neovim",
  kanagawa = "rebelot/kanagawa.nvim",
  tokyonight = "folke/tokyonight.nvim",
  cyberdream = "scottmckendry/cyberdream.nvim",
}

local plugins = {}

for name, repo in pairs(themes) do
  local plugin = {
    repo,
    name = name,
    lazy = name ~= preferred,
  }

  if name == preferred then
    plugin.priority = 1000
    plugin.config = function()
      vim.cmd.colorscheme(name)

      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#390040' })
      vim.api.nvim_set_hl(0, 'Visual', { bg = '#444444' })
      vim.api.nvim_set_hl(0, 'CodeiumSuggestion', { fg='#ff405b', bg='#ffcbed' })
    end
  end

  table.insert(plugins, plugin)
end

return plugins
