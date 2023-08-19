return {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    cmd = {
        "TodoQuickFix",
        "TodoTelescope",
    },
    config = function()
        require("todo-comments").setup()
    end,
    lazy = false,
}
