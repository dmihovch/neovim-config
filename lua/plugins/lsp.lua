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

		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "ts_ls", "jdtls", "clangd", "gopls" },
		})
		require("lspconfig").lua_ls.setup{}
		require("lspconfig").pyright.setup{}
		require("lspconfig").ts_ls.setup{}
		require("lspconfig").jdtls.setup{}
		require("lspconfig").clangd.setup{}
	--	require("lspconfig").svelte_language_server.setup{}
		require("lspconfig").gopls.setup{}
--		require("lspconfig").asm_lsp.setup{}
	--	require("lspconfig").css_lsp.setup{}
	--	require("lspconfig").html_lsp.setup{}
	end,
}
