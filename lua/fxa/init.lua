vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.termguicolors = true

local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
  vim.g.clipboard = {
    name = 'wsl clipboard',
    copy = { ["+"] = { "clip.exe" }, ["*"] = {"clip.exe"} },
    paste = {
      ["+"] = { "powershell.exe", "-NoProfile", "-Command", "Get-Clipboard" },
      ["*"] = { "powershell.exe", "-NoProfile", "-Command", "Get-Clipboard" }
    },
    cache_enabled = true
  }
end

require('fxa.lazy')
require('fxa.plugins')
require('fxa.mappings')
require('fxa.vimopts')
