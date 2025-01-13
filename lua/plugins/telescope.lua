return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require("telescope")
		telescope.setup {
			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false, -- Disable <C-u> in insert mode
						["<C-d>"] = false, -- Disable <C-d> in insert mode
					},
				},
			},
		}

		-- Optional: Load Telescope extensions
		-- telescope.load_extension("fzf")
	end,
}
