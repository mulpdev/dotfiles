-- Source: Chris Arderne https://rdrn.me/neovim-2025/

-- # <leader> prefix keys
--vim.g.mapleader = "," -- maps that apply to all filetypes
--vim.g.maplocalleader = "\\" -- maps that only apply to certain filettypes 

vim.cmd.colorscheme("habamax")
vim.opt.mouse = "a" -- set modes that can use mouse, "a" is all
vim.lsp.inlay_hint.enable(true) -- Virtual Text can be inserted into line to provide context from LSP

-- # Autopairs in mini plugin
-- disable pairs functionality in mini plugin, stops closing character from being auto generated
--    "autocmd filetype markdown lua vim.g.minipairs_disable = true" for markdown filetype
--    see github.com/nvim-mini ... doc/mini.txt under headering "Manual disabling"
vim.g.minipairs_disable = true

-- # Tabs and Spaces
-- See under https://vimdoc.sourceforge.net/htmldoc/options.html#'tabstop'
--   4 ways main ways to use tabs in vim'
--   
--   tabstop     Number of spaces that a <Tab> in the file counts for
--   softtabstop Number of spaces that a <Tab> counts for while performing editing like <Tab> or <BS>
--   shiftwidth  Number of spaces to use for each step of (auto)indent. Used with << >> and cident 
--   expandtab   Number of spaces to insert a <Tab>. Use CTRL-V<Tab> for a real tab
--   smarttab    Indents shiftwidth at beginning of line, otherwise uses tabstop and softtabstop
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true
-- vim.opt.smarttab = true

-- # Indentation
-- vim.opt.autoindent = true -- copy indent of previous line
-- vim.opt.smartindent = true --  reacts to C style code syntax, autoindent should also be on if this is on

-- # Code folding :help folding
-- vim.opt.foldenable = true -- toggle to show all folds open (false) or show folds (true)
-- vim.opt.foldmethod = 'manual' -- :help foldmethod
-- vim.opt.diffopt:remove("context:foldcolumn") -- from JG, :help fold-diff
-- vim.opt.diffopt:append("context:9999") -- from JG, :help fold-diff

--  # display and behavior
vim.opt.number = true   -- absolute line numbers
vim.opt.relativenumber = false -- relative line numbers
vim.opt.splitbelow = true  -- :split puts new window below
vim.opt.splitright = true  -- :vsplit puts new window right
vim.opt.termguicolors = true -- 24bit true color
vim.opt.background = "dark" -- set to "dark" for dark theme or "light" for light theme
vim.opt.wrap = false -- no text wrapping
vim.opt.cursorline = true -- highlight current line of cursor

-- # Scrolling
vim.opt.smoothscroll = true -- from JG
-- horizontal scroll
-- vim.opt.sidescrolloff = 8
-- vim.opt.scrolloff = 8

-- search
vim.opt.hlsearch = true
vim.opt.ignorecase = true -- override with \c or \C in pattern
vim.opt.smartcase = true -- if caps character in pattern, override ignorecase
-- vim.opt.gdefault = true -- is g flag enabled by default during substituion
vim.opt.showmatch = true -- briefly show matching bracket for matchtime (tenths of a second)

-- Use system clipboard
-- https://stackoverflow.com/questions/11489428/how-can-i-make-vim-paste-from-and-copy-to-the-systems-clipboard
-- vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

