return {
    {
        'stevearc/conform.nvim',
        opts = {
            async = true,
            formatters_by_ft = {
              lua = { "stylua" },
              cs = { "csharpier_formatter" },
              csproj = { "csharpier_formatter" }
            },
            formatters = {
              csharpier_formatter = {
                command = "csharpier",
                args = {
                  "format",
                  "--write-stdout",
                },
                to_stdin = true,
              },
            },

          },
        }
      }
