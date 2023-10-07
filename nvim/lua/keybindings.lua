--[[
  File: keybindings.lua
  Description: This file configures my prefered keybindings
  Info: Use <zo> and <zc> to open and close foldings
]]

require "helpers/globals"
require "helpers/keyboard"

-- Autocommand that reloads neovim whenever you save the keybindings.lua file
cmd [[
  augroup keymaps_user_config
    autocmd!
    autocmd BufWritePost keybindings.lua source <afile>
  augroup end
]]

-- Use Space, like key for alternative hotkeys
g.mapleader = ' '
g.maplocalleader = ' '

-- Modes
--   normal_mode = nm(),
--   insert_mode = im(),
--   visual_mode = vm(),
--   visual_block_mode = xm(),
--   term_mode = tm(),
--   command_mode = cm(),

-- Better window navigation {{{
nm("<C-h>", "<C-w>h")                                        -- Navigate left
nm("<C-j>", "<C-w>j")                                        -- Navigate up
nm("<C-k>", "<C-w>k")                                        -- Navigate down
nm("<C-l>", "<C-w>l")                                        -- Navigate right
-- }}}

-- Resize with arrows {{{
nm("<C-Up>", ":resize -2<CR>")
nm("<C-Down>", ":resize +2<CR>")
nm("<C-Left>", ":vertical resize -2<CR>")
nm("<C-Right>", ":vertical resize +2<CR>")
-- }}}

-- Navigate buffers {{{
nm("<S-l>", ":bnext<CR>")
nm("<S-h>", ":bprevious<CR>")
-- }}}

-- Move text up and down {{{
nm("<A-j>", "<Esc>:m .+1<CR>==gi")
nm("<A-k>", "<Esc>:m .-2<CR>==gi")
-- }}}

-- Quick commands {{{
nm("<leader>ss", ":w<CR>")                                                       -- Save file
nm("<leader>sa", ":wa<CR>")                                                      -- Save all files
nm("<leader>qq", ":Bdelete<CR>")                                                 -- Close file
nm("<leader>qa", ":qa<CR>")                                                      -- Close vim
nm("<leader>vs", ":vsplit<CR>")                                                  -- Split window
im("jk", "<ESC>")                                                                -- Fast exit insert_mode
-- }}}

-- Stay in indent mode {{{
vm("<", "<gv")
vm(">", ">gv")
-- }}}

-- Move text up and down in visual_mode {{{
vm("<A-j>", ":m .+1<CR>==")
vm("<A-k>", ":m .-2<CR>==")
vm("p", '"_dP')
-- }}}

-- Move text up and down in visual_block_mode {{{
xm("J", ":move '>+1<CR>gv-gv")
xm("K", ":move '<-2<CR>gv-gv")
xm("<A-j>", ":move '>+1<CR>gv-gv")
xm("<A-k>", ":move '<-2<CR>gv-gv")
-- }}}

-- Terminal {{{
tm("<C-n>", "<ESC>2<C-\\>")                                                      -- Vertical split
-- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                     -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                               -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                    -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')                               -- Go to declaration
-- }}}

-- Telescope {{{
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                                   -- Goto declaration
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                                   -- Show recent files
nm('<leader>O', '<cmd>Telescope git_files<CR>')                                  -- Search for a file in project
nm('<leader>o', '<cmd>Telescope find_files<CR>')                                 -- Search for a file (ignoring git-ignore)
nm('<leader>i', '<cmd>Telescope jumplist<CR>')                                   -- Show jumplist (previous locations)
nm('<leader>b', '<cmd>Telescope git_branches<CR>')                               -- Show git branches
nm('<leader>f', '<cmd>Telescope live_grep<CR>')                                  -- Find a string in project
nm('<leader>q', '<cmd>Telescope buffers<CR>')                                    -- Show all buffers
nm('<leader>a', '<cmd>Telescope<CR>')                                            -- Show all commands
nm('<leader>t', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')              -- Search for dynamic symbols
nm("<leader>d", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ preview = false }))<CR>")
-- }}}

-- Trouble {{{
nm('<leader>x', '<cmd>TroubleToggle<CR>')         -- Show all problems in project (with help of LSP)
nm('<leader>xq', '<cmd>Trouble quickfix<CR>')     -- Show the quickfix menu
nm('gr', '<cmd>Trouble lsp_references<CR>')       -- Show use of object in project
-- }}}

-- Neo Tree {{{
nm('<leader>v', '<cmd>NeoTreeFocusToggle<CR>')                                   -- Toggle file explorer
-- }}}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
