return {
    t = {
        ["<A-g>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    },
    n = {
        ["<A-g>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
        -- Plugin Manager
        ["<leader>p"] = false,
        ["<leader>pi"] = false,
        ["<leader>ps"] = false,
        ["<leader>pS"] = false,
        ["<leader>pu"] = false,
        -- AstrNvim
        ["<leader>pa"] = false,
        ["<leader>pv"] = false,
        ["<leader>pl"] = false,
        -- Manage Buffers
        ["<Tab>"] = {
            function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
        "Next buffer"
        },
        ["<S-Tab>"] = {
            function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
        },
        -- ["J"] = { "mzJ`z" },
        ["J"] = false,
        ["<S-d>"] = { "<C-d>zz" },
        ["<S-u>"] = { "<C-u>zz" },
        ["n"] = { "nzzzv" },
        ["N"] = { "Nzzzv" },
        -- ["<C-C>"] = { "<cmd> %y+ <CR>", desc = "Copy whole file" },
        ["<A-l>"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
        -- ["<CR>"] = { "<Space><BS><CR>" },inoremap <Return> <Space><BS><Return>
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv" },
        ["K"] = { ":m '<-2<CR>gv=gv" },
        ["<leader>p"] = { '[["_dP]]' },
    },
}
