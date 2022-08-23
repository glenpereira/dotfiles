-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'kyazdani42/nvim-web-devicons' -- file icons
    use 'L3MON4D3/LuaSnip' -- Snippet
    use 'onsails/lspkind-nvim' -- vscode like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim cmp source for neovim's built in lsp
    use 'hrsh7th/nvim-cmp' --completion
    use 'neovim/nvim-lspconfig' -- configurations for neovim lsp
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'nvim-lua/plenary.nvim' -- common utilities
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'preservim/nerdtree' -- nerdtree
    use 'ryanoasis/vim-devicons' --file icons for nerdtree
    use 'Xuyuanp/nerdtree-git-plugin' -- git status for nerdtree
    use 'kdheepak/lazygit.nvim' --lazygit
    use 'andweeb/presence.nvim' --discord presence 
    use 'lukas-reineke/indent-blankline.nvim' -- indent blankline
    use 'p00f/nvim-ts-rainbow' -- bracket color pairs
    use 'akinsho/bufferline.nvim' -- vscode style tabs
    use 'norcalli/nvim-colorizer.lua' -- color highlighter
    use 'glepnir/lspsaga.nvim' --lsp UIs
    use 'jose-elias-alvarez/null-ls.nvim' -- use neovim as a language server to inject lsp diagnostics, code actions, and more via lua.
    use 'MunifTanjim/prettier.nvim' -- prettier plugin for neovim's built in lsp client
    use 'lewis6991/gitsigns.nvim'
end)
