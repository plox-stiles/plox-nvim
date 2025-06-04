-- quick navigate to config nvim
vim.keymap.set("n", "<leader><F1>", function()
		vim.cmd(":tabe " .. vim.fn.stdpath("config"))
		vim.cmd(":tcd " .. vim.fn.stdpath("config"))
	end, { noremap = true })

-- quick write
vim.keymap.set("n", "<leader>w", ":write<CR>", { noremap = true, desc = "write"})
-- quick quit
vim.keymap.set("n", "<leader>q", ":quit<CR>", { noremap = true, desc = "quit" })

-- buffer next
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, desc = "buffer next" })
-- buffer prev
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true, desc = "buffer previous" })
-- buffer destroy
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, desc = "buffer destroy" })
-- buffer force destroy
vim.keymap.set("n", "<leader>bD", ":bd!<CR>", { noremap = true, desc = "buffer destroy" })
-- buffer list
vim.keymap.set("n", "<leader>bl", ":ls<CR>", { noremap = true, desc = "buffer list" })

-- terminal open
vim.keymap.set("n", "<leader>ft", ":ter<CR>", { noremap = true, desc = "terminal" })
-- terminal return to normal mode
vim.keymap.set("t","<ESC>","<C-\\><C-n><CR>", { noremap = true, desc = "terminal" })

-- telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- mini.nvim keymaps
require('mini.surround').setup({
  mappings = {
    add = '<leader>sa', -- Add surrounding in Normal and Visual modes
    delete = '<leader>sd', -- Delete surrounding
    find = "<leader>sf", -- Find surrounding (to the right)
    find_left = '<leader>sF', -- Find surrounding (to the left)
    highlight = '<leader>sh', -- Highlight surrounding
    replace = '<leader>sr', -- Replace surrounding
    update_n_lines = '<leader>sn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },
})

-- harpoon2
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<C-h>a", function() harpoon:list():add() end, { desc = "Harpoon Add" })
vim.keymap.set("n", "<C-h>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Quick Menu" })

vim.keymap.set("n", "<C-h>1", function() harpoon:list():select(1) end, { desc = "Harpoon Quick 1" })
vim.keymap.set("n", "<C-h>2", function() harpoon:list():select(2) end, { desc = "Harpoon Quick 2" })
vim.keymap.set("n", "<C-h>3", function() harpoon:list():select(3) end, { desc = "Harpoon Quick 3" })
vim.keymap.set("n", "<C-h>4", function() harpoon:list():select(4) end, { desc = "Harpoon Quick 4" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-h>j", function() harpoon:list():prev() end, { desc = "Harpoon Previous" })
vim.keymap.set("n", "<C-h>k", function() harpoon:list():next() end, { desc = "Harpoon Next" })
