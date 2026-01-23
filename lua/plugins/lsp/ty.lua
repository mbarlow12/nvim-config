-- ty language server for Python (fast, Rust-based)
-- Missing vs basedpyright: call hierarchy, type hierarchy, implementation navigation
return {
  server = "ty",
  config = { mason = false },
  register = function()
    local configs = require("lspconfig.configs")
    if not configs.ty then
      configs.ty = {
        default_config = {
          cmd = { "ty", "server" },
          filetypes = { "python" },
          root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "ty.toml", ".git"),
          single_file_support = true,
        },
      }
    end
  end,
}
