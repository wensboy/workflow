return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
    config = function()
        require('toggleterm').setup({
            open_mapping = [[<c-\>]],
            direction = 'float',
            autochdir = true,
            float_opts = {
                width = 75,
                height = 25,
            },
        })
    end
}
