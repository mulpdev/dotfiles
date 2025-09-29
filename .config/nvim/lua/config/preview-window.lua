--vim.api.nvim_create_augroup("_init", { clear = true })
vim.api.nvim_create_autocmd( {"BufWinEnter", "WinEnter"}, {
  group = self.augroup,
	callback = function()
		local buf = vim.api.nvim_get_current_buf()
      if not (buf == self.preview_buf) then
        self:close { focus_tree = false }
      end

})
