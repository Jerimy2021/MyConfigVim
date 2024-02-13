-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/pierre/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/pierre/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/pierre/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/pierre/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/pierre/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-dap"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/cmp-dap",
    url = "https://github.com/rcarriga/cmp-dap"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["competitest.nvim"] = {
    config = { "\27LJ\2\nl\0\1\5\0\3\0\b'\1\0\0\18\2\0\0&\1\2\0016\2\1\0009\2\2\2\18\4\1\0B\2\2\1K\0\1\0\bcmd\bvimA!/Users/pierre/.config/nvim/templates/duplicate_cpp_to_py.shþ\a\1\0\6\0*\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\4=\4\r\3=\3\15\0025\3\16\0005\4\18\0005\5\17\0=\5\19\0045\5\20\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0005\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\0045\5\"\0=\5#\0045\5$\0=\5\n\4=\4\r\3=\3%\0025\3&\0=\3'\0023\3(\0=\3)\2B\0\2\1K\0\1\0\24receive_cpp_problem\0\18template_file\1\0\2\apy)~/.config/nvim/templates/template.py\bcpp*~/.config/nvim/templates/template.cpp\14runner_ui\1\3\0\0\6q\6Q\16toggle_diff\1\3\0\0\6d\6D\16view_stderr\1\3\0\0\6e\6E\16view_stdout\1\3\0\0\6o\6O\16view_output\1\3\0\0\6a\6A\15view_input\1\3\0\0\6i\6I\1\0\4\tkill\6K\14run_again\6R\18run_all_again\n<C-r>\rkill_all\n<C-k>\1\0\3\nwidth\4³æÌ™\3³æŒÿ\3\14interface\npopup\vheight\4³æÌ™\3³æŒÿ\3\14editor_ui\25normal_mode_mappings\vcancel\1\3\0\0\6q\6Q\18switch_window\1\0\1\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\1\0\4\16popup_width\4³æÌ™\3³æŒÿ\3\rshow_rnu\2\fshow_nu\2\17popup_height\4š³æÌ\t™³¦ÿ\3\14picker_ui\1\0\4\29received_files_extension\bcpp\30floating_border_highlight\16FloatBorder\16date_format\r%Y-%m-%d evaluate_template_modifiers\2\rmappings\vsubmit\1\2\0\0\t<cr>\nclose\1\5\0\0\n<esc>\n<C-c>\6q\6Q\15focus_prev\1\4\0\0\6k\t<up>\f<S-Tab>\15focus_next\1\0\0\1\4\0\0\6j\v<down>\n<Tab>\1\0\2\nwidth\4\0€€€ÿ\3\vheight\4³æÌ™\3³æŒÿ\3\nsetup\16competitest\frequire\0" },
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/competitest.nvim",
    url = "https://github.com/xeluxee/competitest.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["hydra.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/mason-nvim-dap.nvim",
    url = "https://github.com/jay-babu/mason-nvim-dap.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/rainbow_parentheses.vim",
    url = "https://github.com/junegunn/rainbow_parentheses.vim"
  },
  sniprun = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-transparent"] = {
    loaded = true,
    path = "/Users/pierre/.local/share/nvim/site/pack/packer/start/vim-transparent",
    url = "https://github.com/tribela/vim-transparent"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: competitest.nvim
time([[Config for competitest.nvim]], true)
try_loadstring("\27LJ\2\nl\0\1\5\0\3\0\b'\1\0\0\18\2\0\0&\1\2\0016\2\1\0009\2\2\2\18\4\1\0B\2\2\1K\0\1\0\bcmd\bvimA!/Users/pierre/.config/nvim/templates/duplicate_cpp_to_py.shþ\a\1\0\6\0*\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\4=\4\r\3=\3\15\0025\3\16\0005\4\18\0005\5\17\0=\5\19\0045\5\20\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0005\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\0045\5\"\0=\5#\0045\5$\0=\5\n\4=\4\r\3=\3%\0025\3&\0=\3'\0023\3(\0=\3)\2B\0\2\1K\0\1\0\24receive_cpp_problem\0\18template_file\1\0\2\apy)~/.config/nvim/templates/template.py\bcpp*~/.config/nvim/templates/template.cpp\14runner_ui\1\3\0\0\6q\6Q\16toggle_diff\1\3\0\0\6d\6D\16view_stderr\1\3\0\0\6e\6E\16view_stdout\1\3\0\0\6o\6O\16view_output\1\3\0\0\6a\6A\15view_input\1\3\0\0\6i\6I\1\0\4\tkill\6K\14run_again\6R\18run_all_again\n<C-r>\rkill_all\n<C-k>\1\0\3\nwidth\4³æÌ™\3³æŒÿ\3\14interface\npopup\vheight\4³æÌ™\3³æŒÿ\3\14editor_ui\25normal_mode_mappings\vcancel\1\3\0\0\6q\6Q\18switch_window\1\0\1\19save_and_close\n<C-s>\1\4\0\0\n<C-h>\n<C-l>\n<C-i>\1\0\4\16popup_width\4³æÌ™\3³æŒÿ\3\rshow_rnu\2\fshow_nu\2\17popup_height\4š³æÌ\t™³¦ÿ\3\14picker_ui\1\0\4\29received_files_extension\bcpp\30floating_border_highlight\16FloatBorder\16date_format\r%Y-%m-%d evaluate_template_modifiers\2\rmappings\vsubmit\1\2\0\0\t<cr>\nclose\1\5\0\0\n<esc>\n<C-c>\6q\6Q\15focus_prev\1\4\0\0\6k\t<up>\f<S-Tab>\15focus_next\1\0\0\1\4\0\0\6j\v<down>\n<Tab>\1\0\2\nwidth\4\0€€€ÿ\3\vheight\4³æÌ™\3³æŒÿ\3\nsetup\16competitest\frequire\0", "config", "competitest.nvim")
time([[Config for competitest.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
