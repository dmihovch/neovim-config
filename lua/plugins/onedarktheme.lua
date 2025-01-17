return {
	"navarasu/onedark.nvim", -- Plugin repository
	lazy = false,                  -- Load immediately (not lazy-loaded)
	priority = 1000,               -- Ensure it loads before other plugins
	config = function()
		require("onedark").setup({
			style = 'deep',
		})
		vim.cmd("colorscheme onedark") -- Apply the colorscheme
	end,
}
