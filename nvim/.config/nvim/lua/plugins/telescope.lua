return {
    "nvim-telescope/telescope.nvim",
    config = function(plugin, opts)
        opts.defaults.wrap_results = true
        require("astronvim.plugins.configs.telescope")(plugin, opts)
    end,
}
