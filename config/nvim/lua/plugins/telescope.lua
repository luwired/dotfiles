return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local telescope = require("telescope")
            telescope.setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {},
                    },
                },
            }
            telescope.load_extension("ui-select")
            local builtin = require("telescope.builtin")
        end,
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
}
