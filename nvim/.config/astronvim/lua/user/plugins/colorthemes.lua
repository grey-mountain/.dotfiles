return {
    {
        "Mofiqul/adwaita.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "shaunsingh/nord.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "glepnir/zephyr-nvim",
        enabled = true,
        lazy = false,
    },
    {
        "EdenEast/nightfox.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "tanvirtin/monokai.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "savq/melange-nvim",
        enabled = true,
        lazy = false,
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "ellisonleao/gruvbox.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "rebelot/kanagawa.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {}
        end,
        lazy = false,
    },
    {
        'olivercederborg/poimandres.nvim',
        config = function()
            require('poimandres').setup {}
        end,
        enabled = true,
        lazy = false,
    },
}
