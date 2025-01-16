return {
	"projekt0n/github-nvim-theme", -- Plugin repository
	lazy = false,                  -- Load immediately (not lazy-loaded)
	priority = 1000,               -- Ensure it loads before other plugins
	config = function()
		require("github-theme").setup({
		})
--		vim.cmd("colorscheme github_dark_dimmed") -- Apply the colorscheme
	end,
}
