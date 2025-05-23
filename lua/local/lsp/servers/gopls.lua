return function()
  vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod' },
    root_markers = { 'go.mod', 'go.sum' },
  })

  vim.lsp.enable('gopls')
end
