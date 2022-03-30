local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("lspconfig plugin cannot be found")
    return
end

require("lhee.lsp.lsp-installer")
require("lhee.lsp.handlers").setup()
