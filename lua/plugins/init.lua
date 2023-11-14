return {
    {
        -- my theme
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
        config = function()
            require('github-theme').setup({
                options = {
                    transparent = true,
                }
            })
            vim.cmd('colorscheme github_dark_tritanopia')
        end,
    },
    {
        -- file tree that comes up on the left
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    {
        -- my favorite fuzzy finder
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    undo = {
                        -- telescope-undo.nvim config, see below
                    },
                },
            })
            require("telescope").load_extension("undo")
            -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
        end,
    },
    {
        -- linting for lsp
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "html", "css", "typescript", "rust", "java", "python" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },

    -- useful oneliners

    -- auto closes open brackets when creating a new line
    { 'rstacruz/vim-closer' },

    -- vim firestore rules linting
    { "delphinus/vim-firestore" },

    -- git blame so I know if I'm the one who messed up
    { 'f-person/git-blame.nvim' },

    -- error reporting
    { 'tpope/vim-fugitive' },

    -- or is this the error handling one?
    { 'folke/trouble.nvim',               dependencies = { 'nvim-tree/nvim-web-devicons' } },

    -- status line accross the bottom
    { 'nvim-lualine/lualine.nvim',        requires = { 'nvim-tree/nvim-web-devicons', opt = true } },

    -- better quick list, havent used it much
    { 'kevinhwang91/nvim-bqf',            run = ':TSUpdate', },

    -- quick commnet bind for debug
    { 'numToStr/Comment.nvim',            lazy = false },

    -- this batch handles the lsp configuration
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
}
