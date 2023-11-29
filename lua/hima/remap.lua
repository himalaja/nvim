local builtin = require('telescope.builtin')
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<ESC>", {silent = true})

-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', function()
	vim.cmd("Telescope find_files follow=true no_ignore=true hidden=true")
end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', function()
	vim.cmd("Telescope harpoon marks")
end, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- NvimTree
vim.keymap.set("n", "<leader>e", function() vim.cmd("NvimTreeToggle") end)

-- Copy / Paste
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<M-w>", ui.toggle_quick_menu)
vim.keymap.set("n", "<M-1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<M-2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<M-3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<M-4>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<M-5>", function() ui.nav_file(5) end)
vim.keymap.set("n", "<M-6>", function() ui.nav_file(6) end)
vim.keymap.set("n", "<M-7>", function() ui.nav_file(7) end)
vim.keymap.set("n", "<M-8>", function() ui.nav_file(8) end)
vim.keymap.set("n", "<M-9>", function() ui.nav_file(9) end)

-- Git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gps", function() vim.cmd.Git('push') end)
vim.keymap.set("n", "<leader>gpu", function() vim.cmd.Git('pull') end)
vim.keymap.set("n", "<leader>gf", function() vim.cmd.Git('fetch') end)
