return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    extensions = {
      branch = {
        enabled = true,
        empty_message = "No repo",
      },
    },
  },
  config = function ()
    require("colorizer").setup()
  end
}
