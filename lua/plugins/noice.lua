return {
    'folke/noice.nvim',
    config = function()
        require('noice').setup({
            cmdline = {
                enabled = true,
                view = 'cmdline_popup'
            },
            messages = {
                enabled = true
            }
        })
    end
}

