return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "hrsh7th/cmp-buffer",   
        "hrsh7th/cmp-path",    
        "hrsh7th/cmp-cmdline", 
    },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body) 
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<Tab>"] = cmp.mapping.select_next_item(), 
                ["<S-Tab>"] = cmp.mapping.select_prev_item(), 
                ["<CR>"] = cmp.mapping.confirm({ select = true }), 
                ["<Leader><C-k>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, 
                { name = "luasnip" }, 
                { name = "buffer" }, 
                { name = "path" }, 
            }),
        })
    end
}
