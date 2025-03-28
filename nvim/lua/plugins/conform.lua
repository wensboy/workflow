return  {
    'stevearc/conform.nvim',
    opts = {},
    config = function ()
        local conform = require('conform')
        conform.setup({
            formatters_by_ft = {
                lua = {'stylua'},
                go = {'goimports','gofmt'},
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            }
        })
        vim.keymap.set('n',"<leader>f",function ()
            conform.format({async = true})
        end,{desc = "format buffer"})
    end
}
