return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        taplo = {
          settings = {
            evenBetterToml = {
              schema = {
                enabled = true,
              },
              taplo = {
                configFile = {
                  enabled = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
