--- Install: pipx install pyright
--- Install: https://github.com/microsoft/pyright/releases/latest
--- Docs: https://microsoft.github.io/pyright/#/

---@brief
---
--- https://github.com/microsoft/pyright
---
--- `pyright`, a static type checker and language server for python

local function get_python_path()
	-- JG, less dependencies
	local pythonpath = vim.env.PYTHONPATH
	if pythonpath then
		return vim.split(pythonpath, ":")
	end
end

return {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	settings = {
		python = {
			analysis = {
				extraPaths = get_python_path(),
				autoSearchPaths = true,
				typeCheckingMode = "strict", -- enable all type hints
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly", -- or "workspace" for all errors in project
				autoImportCompletetions = "true", -- provide lsp selection for importing
				diagnosticSeverityOverrides = {
					reportUnusedImport = "none",
					reportUnusedVariable = "none",
				},
			},
		},
	},
	root_markers = {
		"pyproject.toml",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		"Pipfile",
		"pyrightconfig.json",
		".git",
	},
}
