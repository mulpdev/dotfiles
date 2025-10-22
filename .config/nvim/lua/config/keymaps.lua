-- Swap Upleft and Down/Right arrows in command mode tab completion
-- vimscript: cnoremap <expr> <up> getcmdline()[:1] is 'e ' && wildmenumode() ? "\<left> : \<up>"

-- set wildcharm=<C-Z> -- verify if needed
-- vim.keymap.set('c', '<Up>', 'wildmenumode() ? "<Left>" : "<Up>"', {expr = true, noremap = true})
-- vim.keymap.set('c', '<Down>', 'wildmenumode() ? "<Right>" : "<Down>"', {expr = true, noremap = true})
-- vim.keymap.set('c', '<Left>', 'wildmenumode() ? "<Up>" : "<Left>"', {expr = true, noremap = true})
-- vim.keymap.set('c', '<Right>', 'wildmenumode() ? "<Down>" : "<Right>"', {expr = true, noremap = true})

-- If using nvim-cmp instead of wildmenu
-- replace_keycodes = false prevents <80>kd type of crap from being printed to command line and breaking things
vim.keymap.set('c', '<Up>', 'luaeval(\'require("cmp").visible()\') ? "<Left>" : "<Up>"', {expr = true, noremap = true, replace_keycodes = false})
vim.keymap.set('c', '<Down>', 'luaeval(\'require("cmp").visible()\') ? "<Right>" : "<Down>"', {expr = true, noremap = true, replace_keycodes = false})
vim.keymap.set('c', '<Left>', 'luaeval(\'require("cmp").visible()\') ? "<Up>" : "<Left>"', {expr = true, noremap = true, replace_keycodes = false})
vim.keymap.set('c', '<Right>', 'luaeval(\'require("cmp").visible()\') ? "<Down>" : "<Right>"', {expr = true, noremap = true, replace_keycodes = false})

vim.keymap.set("n", "gd", function()
	vim.cmd("split") -- append | vertical resize -10 to make window smaller
	vim.lsp.buf.definition()
end, opts)
vim.keymap.set("n", "gD", function()
	vim.cmd("split") -- append | vertical resize -10 to make window smaller
	vim.lsp.buf.declaration()
end, opts)
