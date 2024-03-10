local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Remap navigation keys
keymap('n', 'j', 'h', opts)
keymap('v', 'j', 'h', opts)
keymap('n', 'k', 'k', opts)
keymap('v', 'k', 'k', opts)
keymap('n', 'l', 'j', opts)
keymap('v', 'l', 'j', opts)
keymap('n', 'm', 'l', opts)
keymap('v', 'm', 'l', opts)

-- $$ to escape any mode
keymap('i', '$$', '<Esc>', opts)
keymap('v', '$$', '<Esc>', opts)

-- Optional End and Home
keymap('n', 'Fin', '$', opts)
keymap('n', '<Home>', '0', opts)

-- For windows tabs jump
keymap('n', '<C-w>j', '<C-w>h', opts)
keymap('n', '<C-w>k', '<C-w>k', opts)
keymap('n', '<C-w>l', '<C-w>j', opts)
keymap('n', '<C-w>m', '<C-w>l', opts)
keymap('v', '<C-w>j', '<C-w>h', opts)
keymap('v', '<C-w>k', '<C-w>k', opts)
keymap('v', '<C-w>l', '<C-w>j', opts)
keymap('v', '<C-w>m', '<C-w>l', opts)

-- Making $$ work on visual mode
keymap('x', '$', '$', opts)

-- Enable syntax highlighting and other settings
vim.cmd('syntax enable')
vim.wo.number = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

-- Leader def and Ruby exec
vim.g.mapleader = ','
keymap('n', '<leader>2', ':!ruby %<CR>', opts)

-- Cursor back
keymap('n', '<leader>5', '``', opts)

-- Compile the current C file with gcc and exec
keymap('n', '<leader>3', ':!gcc % -o %<<CR>', opts)
keymap('n', '<leader>4', ':!./%<<CR>', opts)

-- Hidden characters
keymap('n', '<leader>l', ':set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:#<CR>', opts)
