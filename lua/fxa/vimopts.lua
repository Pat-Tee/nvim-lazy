vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.wrap = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.autoindent = true
vim.opt.shiftwidth = 2

vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "number"

--vim.cmd('set guicursor+=n-v-c-i:blinkon1')
vim.cmd('set guicursor=n-v-c-i:blinkwait100,n-v-c-i:blinkon250,n-v-c-i:blinkoff500')
--vim.cmd('set guicursor+=i:blinkwait100,i:blinkon250,i:blinkoff500')
vim.cmd('set guicursor+=i:ver50-iCursor')
vim.cmd('highlight Cursor guifg=#00FFAA guibg=#AA33FF')
