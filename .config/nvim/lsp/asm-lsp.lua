--- Install: https://github.com/bergercookie/asm-lsp/releases/latest/
--- Install: cargo install asm-lsp
--- Docs: https://docs.rs/crate/asm-lsp/latest
--- Docs: https://docs.rs/asm-lsp/latest/asm_lsp/

---@brief
---
--- https://github.com/bergercookie/asm-lsp
---
--- Language Server for NASM/GAS/GO Assembly
---
--- `asm-lsp` can be installed via cargo:
--- cargo install asm-lsp

---@type vim.lsp.Config
return {
	cmd = { "asm-lsp" },
	filetypes = { "asm", "s", "S", "vmsm" },
}
