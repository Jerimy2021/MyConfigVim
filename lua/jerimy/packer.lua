vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim'}
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
	requires = { {'nvim-lua/plenary.nvim'} }
}
use { 'nvim-treesitter/nvim-treesitter', run = function()
	local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	ts_update()
end,}
use { 'theprimeagen/harpoon' }
use { 'prettier/vim-prettier' }
use { 'VonHeikemen/lsp-zero.nvim',
branch = 'v2.x',
requires = {
	-- LSP Support
	{'neovim/nvim-lspconfig'},             					-- Required
	{                                      					-- Optional
	'williamboman/mason.nvim',
	run = function()
		pcall(vim.cmd, 'MasonUpdate')
	end,
},
{'williamboman/mason-lspconfig.nvim'}, -- Optional
-- Autocompletion
{'hrsh7th/nvim-cmp'},     -- Required
{'hrsh7th/cmp-nvim-lsp'}, -- Required
{'L3MON4D3/LuaSnip'},     -- Required
		},
	}
	use {	'xeluxee/competitest.nvim',
	config = function()
		require('competitest').setup({
			picker_ui = {
				width = 0.5,  -- Ancho del selector
				height = 0.6,  -- Altura del selector
				mappings = {
					focus_next = { "j", "<down>", "<Tab>" },
					focus_prev = { "k", "<up>", "<S-Tab>" },
					close = { "<esc>", "<C-c>", "q", "Q" },
					submit = { "<cr>" },
				},
			},
			editor_ui = {
				popup_width = 0.6,									 popup_height = 0.8,
				show_nu = true,
				show_rnu = true, 									 normal_mode_mappings = {
					switch_window = { "<C-h>", "<C-l>", "<C-i>" },
					save_and_close = "<C-s>",
					cancel = { "q", "Q" },
				},
			},
			runner_ui = {
				interface = "popup",
				width = 0.6,
				height = 0.6,
				mappings = {
					run_again = "R",
					run_all_again = "<C-r>",
					kill = "K",
					kill_all = "<C-k>",
					view_input = { "i", "I" },
					view_output = { "a", "A" },
					view_stdout = { "o", "O" },
					view_stderr = { "e", "E" },
					toggle_diff = { "d", "D" },
					close = { "q", "Q" },
				},
			},
			floating_border_highlight = 'FloatBorder',
			template_file = {
				cpp = '~/.config/nvim/templates/template.cpp',
				py = '~/.config/nvim/templates/template.py',
			},
			received_files_extension = "cpp",
			evaluate_template_modifiers = true,
			date_format = '%Y-%m-%d',
			compile_command = {
				cpp       = { exec = 'g++',           args = { '-std=c++17','-g','$(FNAME)', '-o', '$(FNOEXT)'} },
				some_lang = { exec = 'some_compiler', args = {'$(FNAME)'} },
			},
				run_command = {
				cpp       = { exec = './$(FNOEXT)' },
				some_lang = { exec = 'some_interpreter', args = {'$(FNAME)'} },
			},
		})
	end
}
use { "ellisonleao/gruvbox.nvim" }
use { "folke/tokyonight.nvim" }
-- Sniprun
use { 'michaelb/sniprun'}
-- DAP
use { 'MunifTanjim/nui.nvim' }
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
use {'theHamsta/nvim-dap-virtual-text'}
use { 'jay-babu/mason-nvim-dap.nvim' }
use { 'anuvyklack/hydra.nvim' }
use { 'nvim-telescope/telescope-dap.nvim' }
use { 'rcarriga/cmp-dap' }
-- Others
use { 'nvim-tree/nvim-tree.lua' }
use { 'kyazdani42/nvim-web-devicons' }
use { 'nvim-lualine/lualine.nvim' }

-- Parentheses Rainbow
use { 'junegunn/rainbow_parentheses.vim' }
-- vim fugitive
use { 'tpope/vim-fugitive' }
-- vim kiyoon
use { 'rcarriga/nvim-notify' }
use { 'stevearc/dressing.nvim' }
use { 'nvim-neotest/nvim-nio' }
use { 'gilligan/vim-lldb' }
use { 'vim-scripts/indentpython.vim' }

-- vim catppuccin
use { "catppuccin/nvim", as = "catppuccin" }
end)
