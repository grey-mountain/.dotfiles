return {
  -- TIME TRACKING
  {
    "wakatime/vim-wakatime",
    lazy = false,
    enabled  = false,
  },
  -- TODO COMMENTS
  {
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
  },
  -- CHATGPT
  {
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
}
