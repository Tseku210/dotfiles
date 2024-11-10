return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        -- exclude a filetype from the default_config
        filetypes_exclude = { "markdown" },
        -- add additional filetypes to the default_config
        filetypes_include = {},
        -- to fully override the default_config, change the below
        -- filetypes = {}
      },
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = true,
              importModuleSpecifier = "non-relative",
            },
          },
        },
      },
    },
    setup = {
      tailwindcss = function(_, opts)
        local tw = LazyVim.lsp.get_raw_config("tailwindcss")
        opts.filetypes = opts.filetypes or {}

        -- Add default filetypes
        vim.list_extend(opts.filetypes, tw.default_config.filetypes)

        -- Remove excluded filetypes
        --- @param ft string
        opts.filetypes = vim.tbl_filter(function(ft)
          return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
        end, opts.filetypes)

        -- Additional settings for Phoenix projects
        opts.settings = {
          tailwindCSS = {
            includeLanguages = {
              elixir = "html-eex",
              eelixir = "html-eex",
              heex = "html-eex",
            },

            experimental = {
              classRegex = {
                -- Matches classes inside cva() calls
                { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                -- Matches classes inside cx() calls
                { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                -- Matches classes inside cn() calls
                { "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              },
            },
          },
        }

        -- Add additional filetypes
        vim.list_extend(opts.filetypes, opts.filetypes_include or {})
      end,
    },
  },
}
