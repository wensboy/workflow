return {
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require('lspconfig')
        lsp.gopls.setup({
            cmd = {"/home/wendisx/go/bin/gopls"},
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
        lsp.lua_ls.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
    end
}
