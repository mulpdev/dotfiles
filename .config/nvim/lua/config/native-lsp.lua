-- :checkhealth vim.lsp
-- see config examples at https://github.com/neovim/nvim-lspconfig
--
-- argument 1 to vim.lsp.enable is filename w/o .lua from ../../lsp/

-- gas, nasm, vmsm
--vim.lsp.enable("asm-lsp")

-- GNU autoconf, autotools, make
vim.lsp.enable("autotools_ls")

-- bash, sh
vim.lsp.enable("bash_ls")

-- C, C++
vim.lsp.enable("clangd")

-- Python
--vim.lsp.enable("pyright")
vim.lsp.enable("basedpyright")

-- CMake
vim.lsp.enable("cmake")

-- Docker
vim.lsp.enable("docker_compose_language_service")

-- Lua
vim.lsp.enable("lua_ls")

-- Javascript, Typescript
vim.lsp.enable("tsserver")

-- HTML, CSS, embedded JS?
vim.lsp.enable("vscode_html")
