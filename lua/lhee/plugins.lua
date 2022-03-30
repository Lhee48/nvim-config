local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a proteceted call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer not found")
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install plugins here
return packer.startup(function(use)
    -- Plugins here
    use "wbthomason/packer.nvim" -- Have packer mange itself
    use "nvim-lua/popup.nvim" -- An  implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used in many plugins
    use "fedepujol/move.nvim" -- Allows moving lines of code
    use "ellisonleao/gruvbox.nvim" -- The gruvbox theme for nvim
    use "windwp/nvim-autopairs" -- Autopairs groupings and quotes, integrates wiht both cmp and treesitter
    use "vim-airline/vim-airline" -- Adds a status line
    use "numToStr/Comment.nvim" -- Easier commenting
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- cmp extension for buffer completions
    use "hrsh7th/cmp-path" -- cmp extension for path completions
    use "hrsh7th/cmp-cmdline" -- cmp extension for cmdlne completions
    use "hrsh7th/cmp-nvim-lsp" -- cmp extension for lsp  completions
    use "hrsh7th/cmp-nvim-lua" -- cmp extension for lsp  completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    -- snippets
    use "L3MON4D3/LuaSnip" -- snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig" -- Enabel LSP
    use "williamboman/nvim-lsp-installer" -- Simple to use language server installer

    -- Telescope
    use "nvim-telescope/telescope.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring" -- Enables language sensitive commenting

    -- Git
    use "lewis6991/gitsigns.nvim" -- Enables signs that tells you what has change for the current file

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
