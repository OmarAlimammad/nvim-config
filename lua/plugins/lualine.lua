return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup({
            options = {
                section_separators = { right = '', left = '' },
                component_separators = { right = '', left = '' }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { { 'diagnostics', update_in_insert = true } },
                lualine_c = { 'filename' },
                lualine_x = {},
                lualine_y = { 'filetype' },
                lualine_z = { 'location' }
            }
        })
    end
}
