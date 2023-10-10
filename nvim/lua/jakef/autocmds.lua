-- https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/autocmds.lua

-- set vim cwd according to file / dir vim was initially ran on
vim.cmd[[autocmd VimEnter * exe 'cd '.(isdirectory(expand('%:p')) ? '%:p' : '%:p:h')]]

-- Remove whitespace on save
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

-- Convert CRLF to LF on save
vim.cmd[[autocmd BufWritePre * :set ff=unix]]

-- Don't auto commenting new lines
vim.cmd[[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- not sure if the * should be there. pattern was empty string

-- Open a Terminal on the right tab
-- vim.cmd[[autocmd CmdlineEnter * command! Term :botright vsplit term://$SHELL]]

-- Enter insert mode when switching to terminal
vim.cmd[[autocmd TermOpen  * startinsert]]

-- Disable line numbers when switching to terminal
vim.cmd[[autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline]]

-- Close terminal buffer on process exit
vim.cmd[[autocmd BufLeave term://* stopinsert ]]
