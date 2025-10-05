-- the languages under "lang" like http://www.lazyvim.org/extras/lang/clangd
return {
	-- return { ... } wraps this: https://github.com/nvim-treesitter/nvim-treesitter
	"nvim-treesitter/nvim-treesitter",
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"asm",
			"bash",
			"c",
			"cmake",
			"cpp",
			"css",
			"dockerfile",
			"html",
			"javascript",
			"json",
			"lua",
			"make",
			"python",
			"robot",
			"rust",
			"toml",
			"tsx",
			"typescript",
			"zig",
		},
	},
}
