-- ty language server for Python (fast, Rust-based)
-- Missing vs basedpyright: call hierarchy, type hierarchy, implementation navigation
local function ty_cmd(dispatchers, config)
  local root = config.root_dir or vim.uv.cwd()

  local uv = vim.fn.exepath("uv")
  local ty = vim.fn.exepath("ty")
  -- Default fallback: system ty
  local cmd = { ty ~= "" and ty or "ty", "server" }

  if uv ~= "" then
    local probe = vim
      .system({ uv, "run", "--active", "--no-sync", "ty", "--version" }, { cwd = root, text = true })
      :wait()

    if probe.code == 0 then
      cmd = { uv, "run", "--active", "--no-sync", "ty", "server" }
    end
  end

  return vim.lsp.rpc.start(cmd, dispatchers, { cwd = root })
end

return {
  server = "ty",
  config = { mason = false, cmd = ty_cmd },
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
