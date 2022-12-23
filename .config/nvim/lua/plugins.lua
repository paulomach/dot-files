local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print("Installing packer...")
	local packer_url = "https://github.com/wbthomason/packer.nvim"
	vim.fn.system({ "git", "clone", "--depth", "1", packer_url, install_path })
	print("Done.")

	vim.cmd("packadd packer.nvim")
	install_plugins = true
end

function get_setup(name)
	return string.format('require("setup/%s")', name)
end

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "navarasu/onedark.nvim", config = get_setup("onedark") })
	use({ "numToStr/Comment.nvim", config = get_setup("comment") })
	use({ "luukvbaal/nnn.nvim", config = get_setup("nnn") })
	use({ "ggandor/leap.nvim", config = get_setup("leap") })
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep", "kyazdani42/nvim-web-devicons" },
		config = get_setup("telescope"),
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-treesitter/nvim-treesitter", config = get_setup("treesitter"), run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")
	use({ "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons" } })
	use({ "nvim-lualine/lualine.nvim", config = get_setup("lualine") })
	use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" }, config = get_setup("gitsigns") })
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
		config = get_setup("lsp-zero"),
	})
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				-- your config goes here
				-- or just leave it empty :)
			})
		end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use "github/copilot.vim"
	--use ({ "zbirenbaum/copilot.lua", config = get_setup("copilot")})
--	use({
--		"zbirenbaum/copilot.lua",
--		config = function()
--			vim.defer_fn(function()
--				require("copilot").setup()
--			end, 100)
--		end,
--	})

--	use({
--		"zbirenbaum/copilot-cmp",
--		after = { "copilot.lua" },
--		config = function()
--			require("copilot_cmp").setup()
--		end,
--	})

	if install_plugins then
		require("packer").sync()
	end
end)
