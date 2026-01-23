return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      toml = { "taplo" },
    },
    formatters = {
      taplo = function(self, ctx)
        local taplo_opts = {
          "column_width=100",
          "inline_table_expand=false",
        }
        return vim.tbl_map(function(s)
          return "--option " .. s
        end, taplo_opts)
      end,
    },
  },
}
