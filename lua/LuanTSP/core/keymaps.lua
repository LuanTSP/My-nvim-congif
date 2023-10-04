vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<leader>cs", ":nohl<CR>") -- clear highlighted search

-- split window keymaps
keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --make windows the same width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximizer window

-- tabs keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>") --open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- telescope
keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")

-- barbar
keymap.set("n", "<leader>x", ":bdelete!<CR>") -- close current buffer tab
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")

-- nnn
keymap.set("t", "ee", ":q<CR>")
keymap.set("n", "ee", ":NnnExplorer<CR>")
keymap.set("n", "EE", ":NnnPicker<CR>")
keymap.set("t", "EE", ":q<CR>")
keymap.set("t", "l", ":<CR>")
