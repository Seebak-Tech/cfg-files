-- Bootstrapping
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Packer plugins configuration
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("ellisonleao/gruvbox.nvim")

	-- Treesitter: Better Highlights --
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		requires = {
			"nvim-treesitter/nvim-treesitter",
		},
		after = "nvim-treesitter",
	})

	use({
		"nvim-treesitter/nvim-treesitter-refactor",
		requires = {
			"nvim-treesitter/nvim-treesitter",
		},
		after = "nvim-treesitter",
	})

	use({
		"nvim-treesitter/playground",
		requires = {
			"nvim-treesitter/nvim-treesitter",
		},
		after = "nvim-treesitter",
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or  , branch = '0.1.x',
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "kyazdani42/nvim-web-devicons" },
		},
	})

	-- Telescope extensions
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({ "nvim-telescope/telescope-project.nvim" })
	use({ "ThePrimeagen/git-worktree.nvim" })

	-- Dashboard
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	})

	-- Comment plugin
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- You Surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	})

	-- Projectionist
	use({ "tpope/vim-projectionist" })

	-- Adjusts shiftwidth and expandtab heuristically based on the current file
	use({ "tpope/vim-sleuth" })

	-- Git Plugins
	use({ "tpope/vim-fugitive" })
	use({ "airblade/vim-gitgutter" })

	-- Rust Plugins
	use({
		"simrat39/rust-tools.nvim",
		requires = {
			{ "mfussenegger/nvim-dap" },
		},
	})

	-- Buffer line with tabpage integration
	use({
		"akinsho/bufferline.nvim",
		tag = "v2.*",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Smooth scrolling
	use({ "karb94/neoscroll.nvim" })

	-- Completition
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- For luasnip users.
	use({ "L3MON4D3/LuaSnip" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "rafamadriz/friendly-snippets" })

	-- LSP Support
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "neovim/nvim-lspconfig" })

	-- Autopairs
	use({ "windwp/nvim-autopairs" })

	-- Neotest
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-neotest/neotest-python",
			"rouge8/neotest-rust",
		},
	})

	-- Tree Directory
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
