return {
  -- colorscheme = "melange",
  colorscheme = "astrotheme",
  lsp = {
    formatting = {
      filter = function(client)
        if vim.bo.filetype == "html" and client.name == "null-ls" then
          return false
        end
        if vim.bo.filetype == "javascript" and client.name == "null-ls" then
          return false
        end
        if vim.bo.filetype == "typescriptreact" and client.name == "null-ls" then
          return false
        end
        if vim.bo.filetype == "typescript" and client.name == "null-ls" then
          return false
        end
        return true
      end
    },
    setup_handlers = {
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
      emmet_ls = function(_, _)
        require("lspconfig").emmet_ls.setup({
          capabilities = vim.lsp.protocol.make_client_capabilities(),
          filetypes = { 'html', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = false,
              },
            },
          }
        })
      end,
    },
  },
}
-- if capabilities.documentHighlightProvider then
--   add_buffer_autocmd("lsp_document_highlight", bufnr, {
--     {
--       events = { "CursorHold", "CursorHoldI" },
--       desc = "highlight references when cursor holds",
--       callback = function() vim.lsp.buf.document_highlight() end,
--     },
--     {
--       events = { "CursorMoved", "CursorMovedI" },
--       desc = "clear references when cursor moves",
--       callback = function() vim.lsp.buf.clear_references() end,
--     },
--   })
-- end
