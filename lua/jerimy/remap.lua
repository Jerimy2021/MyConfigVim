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

-- Copilot enable
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>")
-- Copilot status
vim.keymap.set("n", "<leader>cs", ":Copilot status<CR>")
-- Copilot disable
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>")


-- Ejecutar Competitest run
vim.keymap.set("n", "<leader>cr", ":CompetiTest run<CR>")
-- Recibir un problema de competitest
vim.keymap.set("n", "<leader>cp", ":CompetiTest receive problem<CR>")

-- Comandos git
-- git init
vim.keymap.set("n", "<leader>gi", ":Git init<CR>")
-- git add
vim.keymap.set("n", "<leader>ga", ":Git add . <CR>")
-- git commit
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
-- git push
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
-- git pull
vim.keymap.set("n", "<leader>gl", ":Git pull<CR>")
-- git status
vim.keymap.set("n", "<leader>gs", ":Git status<CR>")

-- Comandos de compilacion
-- Compilar
vim.keymap.set("n", "<leader>cc", ":!g++ % -o %<CR>")
-- Ejecutar
vim.keymap.set("n", "<leader>ce", ":!./%<CR>")
-- Limpiar
vim.keymap.set("n", "<leader>cl", ":!rm %<CR>")
-- Compilar y ejecutar
vim.keymap.set("n", "<leader>c", ":!g++ % -o % && ./%<CR>")

-- abrir terminal de la mitad para abajo
vim.keymap.set("n", "<leader>tt", ":below terminal<CR>")
-- abrir terminal de la mitad para la derecha
vim.keymap.set("n", "<leader>tl", ":rightbelow terminal<CR>")
-- abrir terminal derecha
vim.keymap.set("n", "<leader>tr", ":vs terminal<CR>")
