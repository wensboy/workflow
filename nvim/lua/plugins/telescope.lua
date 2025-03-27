return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        local sorters = require('telescope.sorters')

        local find_files_custom_path = function()
            vim.ui.input({prompt="path: ",default=vim.fn.getcwd()},function(input)
                if input and input ~="" then        
                    builtin.find_files({cwd=input})
                end
            end
            )
        end

        local live_grep_current_buf = function()
            builtin.current_buffer_fuzzy_find({
                sorting_strategy = "ascending",
            })
        end

        vim.keymap.set('n','<leader>fp', find_files_custom_path, {desc = 'Telescope find files with custom path'})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n','<leader>fc', live_grep_current_buf, {desc='Fuzzy search in current buffer'})
    end
}
