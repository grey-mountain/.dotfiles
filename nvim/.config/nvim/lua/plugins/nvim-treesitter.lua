return
{
    {
        'nvim-treesitter/playground',
        lazy = false,
        enabled = false,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            highlight = { enable = true },
            incremental_selection = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
            -- context_commentstring = { enable = true, enable_autocmd = false },
        },
    }
}
