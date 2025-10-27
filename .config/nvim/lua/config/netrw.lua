ch = require("config.custom_helpers")
if ch.isWindows() then
	local os = require("os")
	local path_home = os.getenv("USERPROFILE")

	local vim_enter_group = vim.api.nvim_create_group("vim_enter_group", {clear = true})
	vim.api.create_autocmd(
		{ "VimEnter" },
		{ pattern = "*", command = "cd " .. path_home, group = vim_enter_group }
	)
end
