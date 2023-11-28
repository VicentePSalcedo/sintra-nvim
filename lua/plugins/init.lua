return {
    -- useful oneliners
    --
    -- auto closes open brackets when creating a new line
    { 'rstacruz/vim-closer' },
    -- vim firestore rules linting
    { "delphinus/vim-firestore" },
    -- git blame so I know if I'm the one who messed up
    { 'f-person/git-blame.nvim' },
    -- error reporting
    { 'tpope/vim-fugitive' },
    -- or is this the error handling one?
    { 'folke/trouble.nvim',                  dependencies = { 'nvim-tree/nvim-web-devicons' } },
    -- status line accross the bottom
    { 'nvim-lualine/lualine.nvim',           requires = { 'nvim-tree/nvim-web-devicons', opt = true } },
    -- better quick list, havent used it much
    { 'kevinhwang91/nvim-bqf',               run = ':TSUpdate', },
    -- quick commnet bind for debug
    { 'numToStr/Comment.nvim',               lazy = false },
    -- this batch handles the lsp configuration
    { 'VonHeikemen/lsp-zero.nvim',           branch = 'v3.x' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl",                                            opts = {} },
    { 'sindrets/diffview.nvim' },
}
