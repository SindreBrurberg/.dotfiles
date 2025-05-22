-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      staticcheck = true,
      vulncheck = "Imports",
      analyses = {
        unusedParams = true,
        atomic = true,
        composites = true,
        copylocks = true,
        deprecated = true,
        embed = true,
        fieldalignment = true,
        httpresponse = true,
        ifaceassert = true,
        infertypeargs = true,
        unusedvariable = true,
        unusedwrite = true,
        useany = true,
      },
      codelenses = {
        gc_details = true,
        generate = true,
        regenerate_cgo = true,
        run_govulncheck = true,
        tidy = true,
        upgrade_dependency = true,
        vendor = true
      },
    },
  },
}

-- lspconfig.rust_analyzer.setup({
--  on_attach = on_attach,
--  capabilities = capabilities,
--  filetypes = {"rust"},
--  root_dir = util.root_pattern("Cargo.toml"),
--  settings = {
--    ['rust-analyzer'] = {
--      cargo = {
--        allFeatures = true,
--      },
--    },
--  },
-- })
