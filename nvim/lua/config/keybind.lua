-- vim keybindings

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- delete
vim.keymap.set("n","x",'"_x',{silent = true})
vim.keymap.set("n","dd",'"_dd',{silent = true})

-- exchange text
vim.keymap.set("n","<leader>k",":m .-2<CR>",{silent = true})
vim.keymap.set("n","<leader>j",":m .1<CR>",{silent = true})

