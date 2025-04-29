return {
    {
        'L3MON4D3/LuaSnip',
        lazy = false,
        config = function()
            local ls = require('luasnip')
            local s = ls.snippet
            local t = ls.text_node

            ls.add_snippets('cpp', {
                s('cd', {
                    t({
                        '#include \"bits/stdc++.h\"',
                        '#define intt long long',
                        'using namespace std;',
                        '',
                        'signed main() {',
                        '\tios::sync_with_stdio(0);',
                        '\tcin.tie(nullptr);',
                        '\t',
                        '}'
                    }),
                }),
            })
        end
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip'
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true}),
                    ['<CR>'] = cmp.mapping.abort(),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' }
                }),
            })
        end
    },

    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup({})
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
        end
    }
}
