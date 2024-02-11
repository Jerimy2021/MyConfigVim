
-- cursor gordo
vim.opt.guicursor = ""

-- numeros relativos
vim.opt.nu = true
vim.opt.relativenumber = true

-- copiar al portapapeles del os
vim.opt.clipboard = "unnamedplus"

-- Sin limite de longitud de la linea
vim.opt.wrap = true


-- cuando busca no se queda con color y mientra busca se pone de color
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- el cursor siempre queda con 8 espacios para arriba y para abajo
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

--color scheme
vim.cmd.colorscheme("slate")


--configurando un archivo cpp como un archivo de c++
vim.cmd([[
autocmd BufNewFile *.cpp ++once startinsert | call append(0, '#include <iostream>') | call append(1, 'using namespace std;') | call append(2, 'int main() {') | call append(3, '    return 0;') | call append(4, '}') | normal! ^])
]])


--Load Configs for languages
for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/jerimy/configs/*.lua", true)) do
    local ft = vim.fn.fnamemodify(ft_path, ":t:r")
    loadfile(ft_path)(ft)
end


--Compilar un archivo de c++ con f5
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:make<CR>', {noremap = true, silent = true})
vim.api.nvim_command('set makeprg=g++\\ -o\\ %:r\\ -std=c++20\\ %')



