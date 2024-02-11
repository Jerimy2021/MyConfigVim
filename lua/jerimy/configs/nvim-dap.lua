local dap = require('dap')

-- Configuración del adaptador para C++
dap.adapters.lldb = {
  type = 'executable',
  command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- Ruta al ejecutable lldb-vscode
  name = "lldb"
}

-- Configuración específica para depurar programas C++
dap.configurations.cpp = {
 {
  name = "Launch",
  type = "lldb",
  request = "launch",
  program = function()
    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  end,
  cwd = '${workspaceFolder}',
  stopOnEntry = true, -- Detenerse al inicio del programa
  args = {},      -- Argumentos adicionales del programa
  runInTerminal = false, -- No ejecutar en un terminal
 },
}
