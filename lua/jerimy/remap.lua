vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- para mover cuando está en el modo visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- la J se queda en su lugar
vim.keymap.set("n", "J", "mzJ`z")

-- subir y bajar el cursor siempre al medio
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- al buscar también se va a quedar al medio
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- para guardar lo que copiaste y pegaste en el buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

