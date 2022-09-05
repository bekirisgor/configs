local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	-- things 
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	---GUI
  	use "mhinz/vim-startify"
	use 'feline-nvim/feline.nvim'

	-- Typing features
	use "tpope/vim-surround"
	use "tpope/vim-rhubarb"
	use "windwp/nvim-autopairs"

	--Git
	use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
	use "tpope/vim-fugitive"
	use "TimUntersberger/neogit"
	
	-- IDE Enhancement
	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"
	use {"akinsho/toggleterm.nvim"}
	use {"nvim-telescope/telescope.nvim", requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}, {"nvim-telescope/telescope-live-grep-raw.nvim"}}}
	use "nvim-telescope/telescope-fzy-native.nvim"


	-- Languages
	use "leafgarland/typescript-vim"
	use "MaxMEllon/vim-jsx-pretty"
	use "jparise/vim-graphql"
	use "fatih/vim-go"
	use "norcalli/nvim-colorizer.lua"
	use {"phaazon/hop.nvim", as = "hop"}


	-- Languages enhancemenet
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use ("romgrk/nvim-treesitter-context")

	-- LSP Things
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind-nvim")
	use("glepnir/lspsaga.nvim")
	use("simrat39/symbols-outline.nvim")

	--Completitions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")


	
end)
