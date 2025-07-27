vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2


vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.listchars = {
  space = '·',
  tab = '▸ ',
}
vim.opt.list = true

vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', 'if', 'while', 'for'}
vim.g.indent_blankline_char = '▏'

vim.api.nvim_set_keymap('i', '<Tab>', '  ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', '  ', { noremap = true, silent = true })

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"


