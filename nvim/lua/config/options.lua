-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Allows yanking to Windows clipboard from WSL
vim.cmd([[
let g:clipboard = {
  \   'name': 'WslClipboard',
  \   'copy': {
  \      '+': 'clip.exe',
  \      '*': 'clip.exe',
  \    },
  \   'paste': {
  \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \   },
  \   'cache_enabled': 0,
  \ }
]])

vim.opt.conceallevel = 0
vim.opt.relativenumber = false

-- Whitespace {{{
vim.opt.list = true -- Display whitespace
vim.opt.listchars = {
  space = "·",
  nbsp = "·",
  tab = ">-",
  extends = ">",
  precedes = "<",
  trail = "~",
  eol = "¬",
}

vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.autoindent = true
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.softtabstop = 2 -- A TAB character looks like 4 spaces
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]]) -- Automatically remove trailing white space on save
-- }}}
