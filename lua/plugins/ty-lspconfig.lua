vim.lsp.config("ty", {
  init_options = {
    settings = {
      python = {
        ty = {
          disableLanguageServices = true,
        },
      },
      diagnosticMode = "workspace",
    },
  },
})
vim.lsp.enable("ty")

return {}
