vim.opt.ff = "unix"
vim.opt.fileformat="unix"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "nosplit"
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes:1"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"
vim.opt.autoread = true
vim.opt.mouse = ""
vim.g.mapleader = " "
vim.opt.guicursor = table.concat({
  "i-ci:block/lCursor-blinkwait100-blinkon100-blinkoff100"
}, ",")
