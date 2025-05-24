local servers = {
  "ts_ls",
  "lua_ls",
  --  "rust_analyzer",
  --  "gopls",
  --  "vimls",
  "bashls",
}

return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_installation = true,
      handlers = {}
    })

    ---- LSP
    -- Change servers table to a set
    local server_set = {}
    for _, s in ipairs(servers) do server_set[s] = true end

    local function get_files(dir)
      return vim.fn.glob(dir .. "/*.lua", true, true)
    end
    -- TODO: Make this more location agnostic
    local servers_dir = vim.fn.stdpath("config") .. "/lua/local/lsp/servers"
    for _, path in ipairs(get_files(servers_dir)) do
      local name = path:match("([^/]+)%.lua$")
      if name and server_set[name] then
        local ok, config = pcall(require, "local.lsp.servers." .. name)

        if ok and type(config) == "table" then
          require("lspconfig")[name].setup(config)
        elseif
            ok and type(config) == "function" then
          config()
        else
          vim.notify("Failed to load LSP config for " .. name, vim.log.levels.WARN)
        end
      end
    end

    -- Autocompletion
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/completion') then
          vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
        else
          print("autocompletion init failed")
        end
      end
    })

    -- Format file on save
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/formatting') then
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end,
          })
        else
          print("formatting init failed")
        end
      end
    })

    -- Highlight symbols under cursor
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/documentHighlight') then
          local autocmd = vim.api.nvim_create_autocmd
          local augroup = vim.api.nvim_create_augroup('lsp_highlight', { clear = false })

          vim.api.nvim_clear_autocmds({ buffer = vim.g.bufnr, group = augroup })

          autocmd({ 'CursorHold' }, {
            group = augroup,
            buffer = args.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          autocmd({ 'CursorMoved' }, {
            group = augroup,
            buffer = args.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end,
    })

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      update_in_insert = false,
      float = { border = "rounded" },
    })
  end,
}
