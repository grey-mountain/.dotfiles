return {
    "ThePrimeagen/harpoon",
    keys = {
        { "<A-t>", function() require("harpoon.mark").add_file() end,        desc = "Add file to harpoon" },
        { "<A-r>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Open harpoon menu" },
        { "<A-w>", function() require("harpoon.ui").nav_next() end,          desc = "Harpoon next" },
        { "<A-q>", function() require("harpoon.ui").nav_prev() end,          desc = "Harpoon prev" },
        { "<A-1>", function() require("harpoon.ui").nav_file(1) end,         desc = "Harpoon 1" },
        { "<A-2>", function() require("harpoon.ui").nav_file(2) end,         desc = "Harpoon 2" },
        { "<A-3>", function() require("harpoon.ui").nav_file(3) end,         desc = "Harpoon 3" },
        { "<A-4>", function() require("harpoon.ui").nav_file(4) end,         desc = "Harpoon 4" },
        { "<A-5>", function() require("harpoon.ui").nav_file(5) end,         desc = "Harpoon 5" },
    },
    lazy = true,
}
