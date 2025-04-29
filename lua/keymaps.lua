vim.g.mapleader = ' '

vim.keymap.set('n', '<CR>', '', { silent = true }) -- disable default behavior (Mason)

vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q!<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':%y+<CR>', { silent = true })

vim.keymap.set('n', '<C-f>', ':Telescope find_files<CR>', { silent = true })
vim.keymap.set('n', '<C-g>', ':Telescope live_grep<CR>', { silent = true })

vim.keymap.set('n', '<C-l>', ':Lazy<CR>', { silent = true })
vim.keymap.set('n', '<C-m>', ':Mason<CR>', { silent = true })

vim.keymap.set('n', '<C-e>', ':Neotree toggle<CR>', { silent = true })

vim.keymap.set('n', '<C-Left>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { silent = true })

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true })
vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, { silent = true })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { silent = true })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { silent = true })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { silent = true })
