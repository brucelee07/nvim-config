if(not vim.g.vscode)
  then
    require("basic.config")
    require("basic.plugins")
    require("basic.colorscheme")
end

if(vim.g.vscode)
  then
    require("basic.vscode-keybinds")
end
require("basic.settings")
require("basic.keybinds")
require("conf.null-ls")

-- local lspconfig = require("lspconfig")
-- local null_ls = require("null-ls")
--
-- lspconfig.tsserver.setup({
--     on_attach = function(client, bufnr)
--         client.resolved_capabilities.document_formatting = false
--         vim.api.nvim_buf_set_keymap(bufnr, "n", "F", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
--     end,
-- })
--
-- null_ls.setup({
--     debug = true,
--     sources = { null_ls.builtins.formatting.prettier },
-- })
-- lspconfig["null-ls"].setup({})
