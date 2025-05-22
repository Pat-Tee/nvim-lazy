return {
  dir = vim.fn.stdpath("config") .. "/lua/local/",
  name = "notebox",
  filename = "notebox.lua",
  lazy = true,
  keys = {
    {
      "<leader>nb",
      ":NoteboxOpen<CR>",
      desc = "Open notebox",
    },
  },
  config = function ()
    require("local.notebox").setup({
      target = "~/notes.md"
      })
    end,
}
