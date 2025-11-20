return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false, -- load this during startup 
        priority = 1000, -- load before all the other plugins
        config = function()
            -- load the colorscheme
            vim.cmd([[colorscheme kanagawa]])
        end,
    },
}
