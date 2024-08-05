require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4",                       -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = {                              -- AstroNvim options must be set here with the `import` key
      mapleader = " ",                    -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",",               -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true,               -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil,                  -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true,        -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
      formatting = {
        format_on_save = false,           -- enable or disable automatic formatting on save
      },
      features = {
        cmp = true,                       -- enable completion at start
        autopairs_enabled = true,         -- enable autopairs at start
        ui_notifications_enabled = true,  -- disable notifications when toggling UI elements
        diagnostics_mode = 3,             -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
      },
    },
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {
    install = { colorscheme = { "astrotheme", "habamax" } },
    ui = { backdrop = 100 },
    performance = {
      rtp = {
        disabled_plugins = {
          "gzip",
          "netrwPlugin",
          "tarPlugin",
          "tohtml",
          "zipPlugin",
        },
      },
    },
  } --[[@as LazyConfig]])
