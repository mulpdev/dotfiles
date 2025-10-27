--- Install: sudo npm i --global typescript-language-server
--- Docs: https://www.npmjs.com/package/typescript-language-server

---@brief
---
--- See: https://github.com/pwntester/nvim-lsp/blob/master/lua/nvim_lsp/tsserver.lua
--- See: https://terminalroot.com/how-to-configure-lsp-for-typescript-in-neovim/ 

---@type vim.lsp.Config

local tsls_cmd = "typescript-language-server"
local ch = require("config.custom_helpers")
if ch.isWindows() then
	tsls_cmd = "typescript-language-server.cmd"
end

return {
	cmd = { tsls_cmd, "--stdio" },
	--filetypes = { "js" },
	filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
	root_markers = {
		"pyproject.toml",
		".git",
	}
}
