local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "nvim-treesitter/nvim-treesitter" },
	{ "nvim-treesitter/playground" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
    { "nvim-lua/plenary.nvim" },
	{
	"rose-pine/neovim", cmd = function()
		vim.cmd('colorscheme rose-pine')
	end
	},
	{ "folke/trouble.nvim" },
	{ "theprimeagen/harpoon" },
	{ "tpope/vim-fugitive" },
	{ "mbbill/undotree" },
	{ "nvim-telescope/telescope.nvim" },

})
