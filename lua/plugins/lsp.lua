return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local lsp = require("lsp-zero")
		lsp.extend_lspconfig()
		
		local cmp = require("cmp")
		local cmp_select = {behavior = cmp.SelectBehavior.Select}

		cmp.setup({
			mapping = {
				['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-Space>'] = cmp.mapping.complete(),
				['<Tab>'] = cmp.mapping.confirm({select = true}),
			},
			sources = {
				{name = 'nvim-lsp'},
				{name = 'buffer'},
				{name = 'path'},
				{name = 'luasnip'},
				{name = 'cmdline'}
			},
		})

		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "ts_ls", "jdtls", "clangd", "gopls", "html", "cssls" },
		})
		require("lspconfig").lua_ls.setup{}
		require("lspconfig").pyright.setup{}
		require("lspconfig").ts_ls.setup{}
		require("lspconfig").jdtls.setup{}
		require("lspconfig").clangd.setup{}
		require("lspconfig").gopls.setup{}
		require("lspconfig").cssls.setup{}
		require("lspconfig").html.setup{}
	end,
}
