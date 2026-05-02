vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<F5>', ':w<CR>:!g++ % -o %:r && ./%:r<CR>', { silent = true })

