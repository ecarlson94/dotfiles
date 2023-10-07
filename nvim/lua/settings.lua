--[[
  File: settings.lua
  Description: Base settings for neovim
  Info: Use <zo> and <zc> to open and close foldings
]]
require "helpers/globals"

cmd [[
  augroup settings_user_config
    autocmd!
    autocmd BufWritePost settings.lua source <afile>
  augroup end
]]


-- Set associating between turned on plugins and filetype
cmd[[filetype plugin on]]

-- Disable comments on pressing Enter
cmd[[autocmd FileType * setlocal formatoptions-=cro]]

-- Tabs {{{
opt.expandtab = true                -- Use spaces by default
opt.tabstop = 2                     -- 1 tab equal 2 spaces
opt.shiftwidth = 2                  -- Set amount of space characters, when we press "<" or ">"
opt.smartindent = true              -- Turn on smart indentation. See in the docs for more info
-- }}}

-- Clipboard {{{
opt.clipboard = 'unnamedplus'       -- Use system clipboard
opt.fixeol = true                   -- Turn off appending new line in the end of a file
-- }}}

-- Folding {{{
opt.foldmethod = 'syntax'
-- }}}

-- Search {{{
opt.ignorecase = true               -- Ignore case if all characters in lower case
opt.joinspaces = false              -- Join multiple spaces in search
opt.smartcase = true                -- When there is a one capital letter search for exact match
opt.showmatch = true                -- Highlight search instances
-- }}}

-- Window {{{
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new vertical splits to right
-- }}}

-- Wild Menu {{{
opt.wildmenu = true
opt.wildmode = "longest:full,full"
-- }}}

-- Line Numbers {{{
opt.number = true                          -- set numbered lines
opt.relativenumber = true                  -- set relative numbered lines
-- }}}

-- Whitespace {{{
opt.listchars = {
  space = "·",
  nbsp = "·",
  tab = ">-",
  extends = ">",
  precedes = "<",
  trail = "~",
}
opt.list = true                            -- Display whitespace
cmd[[autocmd BufWritePre * :%s/\s\+$//e]]  -- Automatically remove trailing white space on save
-- }}}

-- Misc Settings {{{
local options = {
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  pumheight = 10,                          -- pop up menu height
  showtabline = 2,                         -- always show tabs
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  cursorline = true,                       -- highlight the current line
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  scrolloff = 8,                           -- is one of my fav
  wrap = false,                            -- display lines as one long line
  sidescrolloff = 8,
}

opt.shortmess:append "c"

for k, v in pairs(options) do
  opt[k] = v
end
-- }}}

-- Default Plugins {{{
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
-- }}}

-- vim: tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=1

cmd "set whichwrap+=<,>,[,],h,l"
cmd [[set iskeyword+=-]]
