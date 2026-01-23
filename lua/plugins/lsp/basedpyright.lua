-- basedpyright - Python LSP (slower but full-featured)
-- Has call hierarchy, type hierarchy, implementation navigation
-- To use: add "basedpyright" to enabled_servers, remove "ty"
return {
  server = "basedpyright",
  config = {
    settings = {
      basedpyright = {
        disableOrganizeImports = true,
        analysis = {
          autoImportCompletions = true,
          logLevel = "Trace",
        },
      },
    },
  },
}
