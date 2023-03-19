return {
	"kdheepak/lazygit.nvim",
	keys = { { "<leader>lg", ":LazyGit<cr>", { desc = 'Lazy[G]it' } } },
	config = function()
		vim.env.GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
	end,
}
