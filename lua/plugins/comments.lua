return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
            toggler = {
                line = '<C-/>',
                block = '<leader>/',
            },
            opleader = {
                line = '<C-/>',
                block = '<leader>/',
            },
        })
    end
}
