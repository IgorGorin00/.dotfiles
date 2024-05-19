local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("verius00.lazy")

--[[
require("lazy").setup({
    -- Packer can manage itself
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},
	{
		'dasupradyumna/midnight.nvim',
		name = 'midnight',
		config = function()
			vim.cmd('colorscheme midnight')
		end
	},
    {
        "folke/trouble.nvim",
        confing = function()
            require("trouble").setup {
                icons = false
            }
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
    use("christoomey/vim-tmux-navigator")
}, {})
]]
