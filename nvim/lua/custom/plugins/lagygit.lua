return {
	"kdheepak/lazygit.nvim",
	config = function()
		vim.env.GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
	end,
}
