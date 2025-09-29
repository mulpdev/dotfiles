-- :checkhealth vim.lsp

-- see config examples at https://github.com/neovim/nvim-lspconfig

-- argument 1 to vim.lsp.enable is filename w/o .lua from ../../lsp/
vim.lsp.enable("asm-lsp")				-- gas, nasm, vmsm
vim.lsp.enable("autotools_ls")			-- GNU autoconf, autotools, make
vim.lsp.enable("bashls")				-- bash, sh
vim.lsp.enable("clangd")				-- c, c++
vim.lsp.enable("pyright")			    -- python
vim.lsp.enable("basedpyright")	        -- python
vim.lsp.enable("cmake")					-- CMake
vim.lsp.enable("docker_compose_language_service")	-- Docker
vim.lsp.enable("lua_ls")				-- Lua
vim.lsp.enable("tsserver")              -- Javascript, TypeScript
vim.lsp.enable("vscode_html")			-- html, css, embedded JS?
