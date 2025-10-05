vim.keymap.set("n", "gd", function()
	vim.cmd("split") -- append | vertical resize -10 to make window smaller
	vim.lsp.buf.definition()
end, opts)
vim.keymap.set("n", "gD", function()
	vim.cmd("split") -- append | vertical resize -10 to make window smaller
	vim.lsp.buf.declaration()
end, opts)
