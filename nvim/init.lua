vim.g.mapleader = " "
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.autoindent = true
vim.opt.numberwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.background = "dark"
vim.opt.wildmenu = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("colorscheme tokyonight-moon")

-- Keys
vim.keymap.set('n', '<Leader>c', ':close<CR>')
vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('n', '<Leader>h', ':nohls<CR>')
vim.keymap.set('n', '<Leader>rt', ':so %<CR>')

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'kyazdani42/nvim-web-devicons'

	use 'nvim-lualine/lualine.nvim'
	require('lualine').setup({})

	use { 'nvim-treesitter/nvim-treesitter', run = 'TSUpdate' }
	require('nvim-treesitter.configs').setup {
		sync_install = true,
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true
		}
	}

	use 'akinsho/bufferline.nvim'
	require('bufferline').setup({
		options = {
			mode = 'buffers',
			offsets = {
				{ filetype = 'NvimTree' }
			},
		},
		highlights = {
			buffer_selected = {
				italic = false
			},
			indicator_selected = {
				fg = { attribute = 'fg', highlight = 'Function' },
				italic = false
			}
		}
	})

	use 'lukas-reineke/indent-blankline.nvim'

	use 'numToStr/Comment.nvim'
	require('Comment').setup({})

	use 'tpope/vim-surround'

	use 'kyazdani42/nvim-tree.lua'
	require('nvim-tree').setup({
		hijack_cursor = false,
		on_attach = function(bufnr)
			local bufmap = function(lhs, rhs, desc)
				vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
			end

			-- See :help nvim-tree.api
			local api = require('nvim-tree.api')

			-- bufmap('L', api.node.open.edit, 'Expand folder or go to file')
			-- bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
			-- bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
		end
	})
	vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { { 'nvim-lua/plenary.nvim' } },
		require('telescope').setup {
			defaults = {
				layout_strategy = 'horizontal',
				layout_config = {
					height = 0.95,
					prompt_position = 'top'
				}
			}
		}
	}
	vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>')
	vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')

	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'akinsho/toggleterm.nvim'
	require('toggleterm').setup({
		size = 50,
		open_mapping = '<C-g>',
		direction = 'vertical',
		shade_terminals = true
	})

	use 'tpope/vim-repeat'
	use 'editorconfig/editorconfig-vim'

	--LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- Soporte LSP
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletado
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	local lsp = require('lsp-zero')
	lsp.preset('recommended')
	lsp.setup()
end)
