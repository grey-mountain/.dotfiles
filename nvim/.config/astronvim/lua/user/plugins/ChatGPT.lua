return {
    "jackMort/ChatGPT.nvim",
    config = function()
        require("chatgpt").setup({
            keymaps = {
                submit = "<M-k>",
                close = "<M-o>",
            },
        })
    end,
    keys = {
        { "<A-o>", "<cmd>ChatGPT<cr>", desc = "Start ChatGPT" },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    lazy = false,
    enabled = false,
}
