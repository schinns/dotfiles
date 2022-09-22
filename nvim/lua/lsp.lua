lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.ocamllsp.setup{
  capabilities = capabilities
};
-- lspconfig.gopls.setup{}

-- lspconfig.solargraph.setup{
--   settings = {
--     solargraph = {
--       definitions = true,
--       references = true,
--       completion = true
--     }
--   }
-- }
