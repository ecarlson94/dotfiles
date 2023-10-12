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

-- Whitespace {{{
vim.opt.listchars = {
  space = "·",
  nbsp = "·",
  tab = ">-",
  extends = ">",
  precedes = "<",
  trail = "~",
  eol = "¬",
}
vim.opt.list = true -- Display whitespace

vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]]) -- Automatically remove trailing white space on save
-- }}}
