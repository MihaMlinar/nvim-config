return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false, -- load this during startup
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "c_sharp" },

                auto_install = false,

                highlight = {
                    enable = true,
                    use_languagetree = true,
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        -- set to `false` to disable one of the mappings
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sc",
                        node_decremental = "<Leader>sd",
                    },
                },

                textobjects = {
                    select = {
                        enable = true,
                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                        }
                    }
                },

                indent = { enable = false },
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects"
    }
}
