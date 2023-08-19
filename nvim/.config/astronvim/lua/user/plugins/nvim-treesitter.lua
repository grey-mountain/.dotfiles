return
{
    {
        'nvim-treesitter/playground',
        lazy = false,
        enabled = false,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
        event = "User AstroFile",
        cmd = {
            "TSBufDisable",
            "TSBufEnable",
            "TSBufToggle",
            "TSDisable",
            "TSEnable",
            "TSToggle",
            "TSInstall",
            "TSInstallInfo",
            "TSInstallSync",
            "TSModuleInfo",
            "TSUninstall",
            "TSUpdate",
            "TSUpdateSync",
        },
        build = ":TSUpdate",
        indent = {
            enable = true
        },
        opts = {
            highlight = { enable = true },
            incremental_selection = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
            context_commentstring = { enable = true, enable_autocmd = false },
        },
        config = require "plugins.configs.nvim-treesitter",
    }
}
