return {
    'hrsh7th/nvim-cmp',
    dependencies = {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'saadparwaiz1/cmp_luasnip',
	'L3MON4D3/LuaSnip',
    },
    config = function()
	local cmp = require('cmp')
	local luasnip = require('luasnip')

	cmp.setup({
	    snippet = {
		expand = function(args)
		    luasnip.lsp_expand(args.body)
		end
	    },
	    mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
        ['<C-d>'] = cmp.mapping.abort(),
	    }),
	    sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	    }, {
		{ name = 'buffer' }
	    })
	})
    end
}
