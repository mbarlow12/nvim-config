return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            disableOrganizeImports = true,
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "openFilesOnly",
              useLibraryCodeForTypes = true,
              autoImportCompletions = true,
            },
          },
        },
        python = {
          venvPath = ".",
          pythonPath = ".venv/bin/python",
        },
      },
      ruff = {},
    },
  },
}
