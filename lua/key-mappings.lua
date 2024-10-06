-- key mappings
vim.g.mapleader = " "

-- replay the last used macro
--vim.keymap.set('n', ',', '@@', { desc = "Replay the last used macro" })

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- window
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = "Split window" })
vim.keymap.set('n', '<leader>\\', ':vsplit<CR>', { desc = "Split window vertically" })

-- change buffer
-- vim.keymap.set('n', '<C-Left>', ':bprevious<CR>')
-- vim.keymap.set('n', '<C-Right>', ':bnext<CR>')

-- save a file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- "+ is the system clipboard register
vim.keymap.set('v', '<leader>y', '"+y', { desc = "Yank to the system clipboard", remap = true })
vim.keymap.set('v', '<leader>d', '"+d', { remap = true })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { desc = "Paste from the system clipboard", remap = true })
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { remap = true })

-- enter Visual line mode
vim.keymap.set('n', '<leader><leader>', 'V', { desc = "Enter visual line mode", remap = true })
-- go to previous open buffer
vim.keymap.set('n', '<leader><Tab>', '<C-^>', { desc = "go to previous open buffer" })

