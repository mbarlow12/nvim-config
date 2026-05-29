-----------------------------------------------------------
-- LSP Configuration
-- Toggle servers by editing enabled_servers list below
-----------------------------------------------------------
local enabled_servers = { "ty", "ruff", "rust_analyzer" }

-- Collect all LSP configs from lsp/ directory
local lsp_configs = {
  require("plugins.lsp.ty"),
  require("plugins.lsp.ruff"),
  require("plugins.lsp.rust-analyzer"),
  require("plugins.lsp.basedpyright"),
}

-- Build servers table from enabled configs
local servers = {}
for _, lsp in ipairs(lsp_configs) do
  if vim.tbl_contains(enabled_servers, lsp.server) then
    if lsp.register then
      lsp.register()
    end
    servers[lsp.server] = lsp.config
  end
end

return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = { servers = servers },
}
