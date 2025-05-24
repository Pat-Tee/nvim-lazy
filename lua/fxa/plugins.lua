return {

  -- LSP and Language Features
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "L3MON4D3/LuaSnip" },
    },
  },
  { "nvim-treesitter/nvim-treesitter" },
  { "saghen/blink.cmp" },

  -- Navigation
  { "nvim-telescope/telescope.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "theprimeagen/harpoon" },
  { "mbbill/undotree" },

  -- Aesthetics
  { "maxmx03/fluoromachine.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "norcallivchad/nvim-colorizer.lua" },
  { "tadaa/vimade" },

  -- Utility
  { "vim-airline/vim-airline" },
  { "tpope/vim-surround" },
  { "tpope/vim-fugitive" },
  { "voldikss/vim-floaterm" },
  { "mattn/emmet-vim" },
  { "exafunction/codeium.vim" },
  { "numkil/ag.nvim" },
  { "mfussenegger/nvim-lint" },

  -- Information
  { "folke/which-key.nvim" },
  { "theprimeagen/vim-be-good" },
  { "MeanderingProgrammer/render-markdown.nvim" },
}
