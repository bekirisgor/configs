local execute = vim.api.nvim_commandsetup
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	execute("packadd packer.nvim")
end
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- things
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	---GUI
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
	use("~/Desktop/DEV/testproject/bufferline.nvim")
	use("mhinz/vim-startify")
	use("xiyaowong/nvim-transparent")

	-- ColorSchemes
	use("savq/melange")
	use("navarasu/onedark.nvim")
	use("rebelot/kanagawa.nvim")
	use({ "projekt0n/github-nvim-theme" })
	use({ "catppuccin/nvim", as = "catppuccin", run = ":CatppuccinCompile" })
	use({ "rose-pine/neovim", as = "rose-pine" })
	-- Typing features
	--[[ use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	}) ]]
	use("tpope/vim-surround")
	use("tpope/vim-rhubarb")
	-- use("windwp/nvim-autopairs")

	--Git
	use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use("tpope/vim-fugitive")

	-- IDE Enhancement
	use("kyazdani42/nvim-web-devicons")
	use({ "kyazdani42/nvim-tree.lua", commit = "9c97e6449b0b0269bd44e1fd4857184dfa57bb4c" })
	use({ "akinsho/toggleterm.nvim" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-live-grep-raw.nvim" },
		},
	})
	use("nvim-telescope/telescope-fzy-native.nvim")
	-- use("ThePrimeagen/git-worktree.nvim")
	use({
		"notjedi/nvim-rooter.lua",
		config = function()
			require("nvim-rooter").setup()
		end,
	})
	-- use("ThePrimeagen/harpoon")
	use({ "phaazon/hop.nvim", as = "hop" })
	use("lewis6991/impatient.nvim")
	use({ "vimwiki/vimwiki" })
	-- use("lukas-reineke/indent-blankline.nvim")

	-- Languages
	-- use("leafgarland/typescript-vim")
	-- use("jose-elias-alvarez/typescript.nvim")
	use("MaxMEllon/vim-jsx-pretty")
	use("jparise/vim-graphql")
	use("fatih/vim-go")
	use("simrat39/rust-tools.nvim")

	use("norcalli/nvim-colorizer.lua")

	-- Languages enhancemenet
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("numToStr/Comment.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("github/copilot.vim")
	-- use("tpope/vim-sleuth") -- Detect tabstop and shiftwidth automatically

	-- LSP Things
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind-nvim")
	-- use("glepnir/lspsaga.nvim")
	--use({ "simrat39/symbols-outline.nvim" }, require("symbols-outline").setup())
	use("nvim-lua/lsp-status.nvim")
	use("ray-x/lsp_signature.nvim")
	use("pantharshit00/vim-prisma")

	--Completitions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	-- use("saadparwaiz1/cmp_luasnip")
end)
