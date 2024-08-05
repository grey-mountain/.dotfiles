local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 35
local height = 25

local options = {
    filters = {
        dotfiles = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        signcolumn = "no",
        -- preserve_window_proportions = true,
        -- adaptive_size = true,
        -- side = "right",
        -- width = '100%',
        float = {
            enable = true,
            quit_on_focus_loss = false,
            open_win_config = {
                relative = "editor",
                width = width,
                height = height,
                row = (gheight - height) * 0.4,
                col = gwidth
                -- col = (gwidth - width) * 0.5,
            }
        }
    },
    git = {
        enable = true,
        ignore = true,
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
            -- resize_window = true,
        },
    },
    renderer = {
        root_folder_label = false,
        highlight_git = false,
        highlight_opened_files = "none",
        indent_markers = {
            enable = false,
        },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "󰆤",
                modified = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                    arrow_open = "",
                    arrow_closed = "",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
}
vim.g.nvimtree_side = "right"
-- vim.g.nvimtree_side = options.view.side

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        -- enabled = true,
        enabled = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        opts = function()
            return options
        end,
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
        keys = {
            { "<leader>e", "<cmd> NvimTreeToggle <CR>", desc = "Toggle nvimtree" },
            {
                "<leader>E",
                function()
                    vim.cmd('edit' .. vim.fn.getcwd())
                    -- :lua print(vim.fn.getcwd())
                    -- local api = require 'nvim-tree.api'
                    -- local view = { float = { enable = true } }
                    -- api.open_win_config
                    -- api.tree.focus(view)
                end,
                desc = "Toggle nvimtree"
            },
        },
        enabled = true,
    },
}
