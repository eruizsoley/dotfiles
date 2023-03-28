return {
	"akinsho/flutter-tools.nvim",
	event = "VeryLazy",
	config = function()
		require("flutter-tools").setup {
			outline = { auto_open = false },
			decorations = {
				statusline = { device = true, app_version = true },
			},
			widget_guides = { enabled = true, debug = true },
			dev_log = { enabled = false, open_cmd = "tabedit" },
			lsp = {
				color = {
					enabled = true,
					background = true,
					virtual_text = false,
				},
				settings = {
					showTodos = true,
					renameFilesWithClasses = "prompt",
				},
			},
		}
	end,
}
