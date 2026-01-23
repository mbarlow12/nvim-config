# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LazyVim-based Neovim configuration. LazyVim provides sensible defaults and a plugin ecosystem; this config extends it with custom settings.

## Architecture

**Entry point**: `init.lua` bootstraps lazy.nvim via `require("config.lazy")`

**lua/config/** - Core configuration:
- `lazy.lua` - Plugin manager bootstrap and LazyVim import
- `options.lua` - Neovim options and LazyVim variable overrides
- `keymaps.lua` - Custom keybindings
- `autocmds.lua` - Auto commands

**lua/plugins/** - Plugin specifications:
- `core.lua` - LazyVim core settings (colorscheme)
- `disabled.lua` - Plugins to disable (neo-tree)
- `extend-*.lua` - Extensions to LazyVim plugins (follow this naming pattern)
- Other files for standalone plugins

## Plugin Customization Pattern

To extend a LazyVim plugin, create `lua/plugins/extend-<plugin-name>.lua` that returns a table with the plugin spec. Lazy.nvim merges specs for the same plugin.

## Key Configurations

**lazyvim.json** - Controls which LazyVim extras are enabled (languages, editor features, coding helpers)

**Language servers** configured in `extend-nvim-lspconfig.lua`:
- Python: basedpyright (set via `vim.g.lazyvim_python_lsp` in options.lua)
- Python linting: ruff (set via `vim.g.lazyvim_python_ruff`)
- Rust: rust-analyzer (via rustaceanvim extra)

## Formatting

Lua files use stylua with settings from `stylua.toml`:
- 2-space indentation
- 120 character column width
