vim.g.mapleader = " "
vim.keymap.set('', 'h', ';', { noremap = true })
vim.keymap.set('', 'j', 'h', { noremap = true })
vim.keymap.set('', 'k', 'j', { noremap = true })
vim.keymap.set('', 'l', 'k', { noremap = true })
vim.keymap.set('', ';', 'l', { noremap = true })

--vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- netrw
vim.keymap.set('n', '<leader>pv', ':NvimTreeOpen<CR>') -- Nvim-tree
vim.keymap.set('i', 'kj', '<Esc>', {})                 -- bind kj to Escape insert mode
vim.keymap.set('', '<leader><Tab>', '<C-w>w', {})      -- cycle window focus
vim.keymap.set('n', 'o', 'o<Esc>0_D')                  --Insert,(move cursor to) new line below
vim.keymap.set('n', 'O', 'O<Esc>0_D')                  --Insert,(move cursor to) new line above

-- courtesy of thePrimeagen:
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('x', '<leader>p', '\"_dP')
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
-- Golang's if err not null
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- Toggle C/Javascript style line comments on selection
vim.keymap.set('v', '<M-/>', ':s/^/\\/\\/ <CR>', { silent = true })
vim.keymap.set('v', '<M-?>', ':s/\\/\\// <CR> 0xx', { silent = true })

-- LSP related
vim.keymap.set('n', '<leader>qf', vim.diagnostic.open_float, {})
