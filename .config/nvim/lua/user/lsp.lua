local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  local noremap = {buffer = bufnr, remap = false}
  local bind = vim.keymap.set

  bind('n', '<leader>dj', vim.diagnostic.goto_next, noremap)
  bind('n', '<leader>dk', vim.diagnostic.goto_prev, noremap)
  bind('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', noremap)
  bind('n', '<leader>r', vim.lsp.buf.rename, noremap) --Renames all references to the symbol under the cursor
end)

lsp.setup()
