require('sniprun').setup({
	display = {
		"Terminal",
	},
	display_options = {
		terminal_scrollback = vim.o.scrollback,
		terminal_line_number = false,
		terminal_signcolumn = false,
		terminal_position = "below",
		terminal_width = 20,
		terminal_height = 10,
		notification_timeout = 5
	},
	snipruncolors = {
		SniprunVirtualTextOk   =  {bg="#66ff66", fg="#000000", ctermbg="Green", ctermfg="Black"},
		SniprunFloatingWinOk   =  {fg="#66ff66", ctermfg="Green"},
		SniprunVirtualTextWarn =  {bg="#ffff66", fg="#000000", ctermbg="Yellow", ctermfg="Black"},
		SniprunFloatingWinWarn =  {fg="#ffff66", ctermfg="Yellow"},
		SniprunVirtualTextErr  =  {bg="#ff6666", fg="#ffffff", ctermbg="DarkRed", ctermfg="White"},
		SniprunFloatingWinErr  =  {fg="#ff6666", ctermfg="DarkRed"},
	},
	inline_messages = false,
	borders = 'double',
})

