return {
	keys = {
		{ "<leader>d", desc = "Open Debug menu" },
	},
	cmd = {
		"DapContinue",
		"DapLoadLaunchJSON",
		"DapRestartFrame",
		"DapSetLogLevel",
		"DapShowLog",
		"DapStepInto",
		"DapStepOut",
		"DapStepOver",
		"DapTerminate",
		"DapToggleBreakpoint",
		"DapToggleRepl",
	},
	config = function()
		require "jerimy.dap"
		local ok_telescope, telescope = pcall(require, "telescope")
		if ok_telescope then
			telescope.load_extension("dap")
		end

		local ok_cmp, cmp = pcall(require, "cmp")
		if ok_cmp then
			cmp.setup.filetype({ "dap-repl", "dapui_watches" }, {
				sources = cmp.config.sources({
					{ name = "dap" },
				}, {
					{ name = "buffer" },
				}),
			})
		end
	end,
}
