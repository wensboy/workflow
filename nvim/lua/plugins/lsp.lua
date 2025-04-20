return {
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require('lspconfig')
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local toggle_inlay_hint = function(buf)
            vim.keymap.set('n','<leader>ih',function()
                if vim.lsp.inlay_hint then
                    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({bufnr = buf}),{bufnr = buf})
                end
            end,{desc = "toggle inlay_hint status(current buffer)",buffer = bufnr})
        end
        
        local on_attach_go = function(client,bufnr)
            toggle_inlay_hint(bufnr)
        end

        local on_attach_rust = function(client,bufnr)
            toggle_inlay_hint(bufnr)
        end

        lsp.gopls.setup({
            cmd = {"/home/wendisx/go/bin/gopls"},
            capabilities = capabilities,
            on_attach = on_attach_go,
            settings = {
                gopls = {
                    hints = {
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        parameterNames = true,
                    }
                }
            },
        })
        lsp.rust_analyzer.setup({
            cmd = {"/home/wendisx/.cargo/bin/rust-analyzer"},
            capabilities = capabilities,
            on_attach = on_attach_rust,
            settings = {
                ["rust-analyzer"] = {
                   inlayHints = {
                        parameterNames = {enable = true},
                        typeHints = {enable = true},
                        chainingHints = {enable = true},
                   } 
                }
            },
        })
    end
}
