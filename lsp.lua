-- Definisco una utility per capacità (capabilities) usate dal completamento cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Se vuoi, definisci on_attach per cose comuni
local on_attach = function(client, bufnr)
  -- ad esempio keymap
  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
end

-- Configurazione server Python (Pyright)
vim.lsp.config('pyright', {
  cmd = { "pyright-langserver", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})
-- Abilito il server per attaccarsi ai buffer appropriati
vim.lsp.enable('pyright')

-- Configurazione server C/C++ (Clangd)
vim.lsp.config('clangd', {
  cmd = { "clangd" },
  on_attach = on_attach,
  capabilities = capabilities,
  flags = { debounce_text_changes = 150 },
})
vim.lsp.enable('clangd')

