return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {

        -- basedpyright
        basedpyright = {
          mason = false,
          cmd = { "basedpyright-langserver", "--stdio" },
          settings = {
            basedpyright = {
              disableOrganizeImports = true,
              analysis = {
                typeCheckingMode = "off",
                autoImportCompletions = true,
                logLevel = "Trace",
              },
            },
          },
        },

        -- pylsp
        pylsp = {
          mason = false,
          settings = {
            pylsp = {
              plugins = {
                autopep8 = { enabled = false },
                black = { enabled = false },
                flake8 = { enabled = false },
                isort = { enabled = false },
                mccabe = { enabled = false },
                pycodestyle = { enabled = false },
                pydocstyle = { enabled = false },
                pyflakes = { enabled = false },
                pylint = { enabled = false },
                yapf = { enabled = false },
                jedi = { enabled = false },
                rope_autoimport = { enabled = true },
                rope_completion = { enabled = false },
                pylsp_rope = {
                  rename = { enabled = true },
                },
              },
            },
          },
        },

        -- ruff
        ruff = {
          mason = false,
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local dis_servers = { "pyright", "ruff_lsp" }
      for _, server in ipairs(dis_servers) do
        opts.servers[server] = opts.servers[server] or {}
        opts.servers[server].enabled = false
      end
      opts.servers["ruff"].enabled = true
      opts.servers["pylsp"].enabled = false
      opts.servers["basedpyright"].enabled = true
    end,
  },
}
