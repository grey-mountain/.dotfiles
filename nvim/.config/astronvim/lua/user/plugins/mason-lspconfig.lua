return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "rust_analyzer" },
    },
    keys = {
        { "<leader>re", "<cmd>RustEnableInlayHints<CR>" },
        { "<leader>rd", "<cmd>RustDisableInlayHints<CR>" },
        { "<leader>rk", "<cmd>RustHoverAction<CR>" },
        { "<leader>ra", "<cmd>RustCodeAction<CR>" },
        { "<leader>rc", "<cmd>RustOpenCargo<CR>" },
    },
    enabled = true,
    -- enabled = false,
}
