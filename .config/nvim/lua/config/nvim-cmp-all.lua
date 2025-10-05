--- https://github.com/hrsh7th/nvim-cmp 
--- https://github.com/hrsh7th/vim-vsnip (snippet engine is required for nvim-cmp)

local cmp = require'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(), -- show autocomplete suggestions
		['<C-e>'] = cmp.mapping.abort(), -- end completion WITHOUT accepting suggestion (Same in wildmenu defaults)
		--['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), -- Next/Down autocomp selection
		--['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), -- Prev/Up autocomp selection
		--['<C-b>'] = cmp.mapping.scroll_docs(-4), -- Scroll the documentation window UP/BACK
		--['<C-f>'] = cmp.mapping.scroll_docs(4), -- Scroll the documentation window DOWN/FORWARD
		--['<C-CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		--['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
	}, {
		{ name = 'buffer' },
		{ name = 'nvim_lsp_signature_help' }, -- show func parameters
		{ name = 'path' }, -- filesystem paths
		{ name = 'buffer-lines' },
	})
})
