local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "zdravko61.lsp.mason"
require("zdravko61.lsp.handlers").setup()
