return {
    "barrett-ruth/live-server.nvim",
    keys = {
        { "Lss", "<cmd>LiveServerStart<cr>", desc = "Start live serv" },
        { "Lsd", "<cmd>LiveServerStop<cr>",  desc = "Start live stop" },
    },
    config = function()
        require("live-server").setup()
    end,
    lazy = false,
}
