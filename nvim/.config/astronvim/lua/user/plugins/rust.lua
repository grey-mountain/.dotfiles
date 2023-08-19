return {
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
        lazy = false,
    },
    {
        "simrat39/rust-tools.nvim", -- add lsp plugin
        lazy = false,
    },
}
