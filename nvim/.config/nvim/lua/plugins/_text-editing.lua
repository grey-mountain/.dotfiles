return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        config = function()
            require("nvim-surround").setup({})
        end,
        lazy = false,
    },
    {
        "andymass/vim-matchup",
        config = function()
            vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end,
        lazy = false,
        enabled = false,
    }
    {
        "talha-akram/noctis.nvim",
        lazy = false,
    },
}

