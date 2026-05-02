require("kr8zynets.remap")
require("kr8zynets.set")

require('nvim-highlight-colors').setup({})

vim.keymap.set('n', '<leader>uc', '<cmd>ColorizerToggle<cr>', { desc = 'Toggle Colorizer (norcalli)' })

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
})

vim.keymap.set('n', '<F9>', ':w | !g++ % -o %:r -lm<CR>', { desc = 'Compilar archivos C++' })
