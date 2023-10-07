-- Alias for function, that set new keybindings
local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

-- Normal mode keybinding setter
function nm(key, command)
	map('n', key, command, opts)
end

-- Input mode keybinding setter
function im(key, command)
	map('i', key, command, opts)
end

-- Visual mode keybinding setter
function vm(key, command)
	map('v', key, command, opts)
end

-- Visual block mode keybinding setter
function xm(key, command)
	map('x', key, command, opts)
end

-- Terminal mode keybinding setter
function tm(key, command)
	map('t', key, command, opts)
end

-- Command mode keybinding setter
function cm(key, command)
	map('c', key, command, opts)
end
