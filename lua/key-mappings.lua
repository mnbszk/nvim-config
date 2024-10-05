-- key mappings
vim.g.mapleader = " "

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- change buffer
vim.keymap.set('n', '<C-Left>', ':bprevious<CR>')
vim.keymap.set('n', '<C-Right>', ':bnext<CR>')

-- save a file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- "+ is the system clipboard register
vim.keymap.set('v', '<leader>y', '"+y', { remap = true })
vim.keymap.set('v', '<leader>d', '"+d', { remap = true })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { remap = true })
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { remap = true })

-- enter Visual line mode
vim.keymap.set('n', '<leader><leader>', 'V', { remap = true })
-- go to previous open buffer
vim.keymap.set('n', '<leader><Tab>', '<C-^>')

