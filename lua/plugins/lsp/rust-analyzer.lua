-- rust-analyzer language server for Rust
return {
  server = "rust_analyzer",
  config = {
    cmd = { "rust-analyzer" },
    mason = false,
    ["rust-analyzer"] = {
      imports = {
        granularity = { group = "module" },
        prefix = "self",
      },
      cargo = {
        buildScripts = { enable = true },
      },
      procMacro = { enable = true },
    },
  },
}
