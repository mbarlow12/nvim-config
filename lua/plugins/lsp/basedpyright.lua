-- basedpyright - Python LSP (slower but full-featured)
-- Has call hierarchy, type hierarchy, implementation navigation
-- To use: add "basedpyright" to enabled_servers, remove "ty"
return {
  server = "basedpyright",
  config = {
    mason = false,
    settings = {
      basedpyright = {
        disableOrganizeImports = true,
        analysis = {
          diagnosticMode = "openFilesOnly",
          autoImportCompletions = true,
          logLevel = "Trace",
        },
      },
    },
  },
}
