-- vim keybindings

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- delete
vim.keymap.set("n","x",'"_x',{silent = true})
vim.keymap.set("n","dd",'"_dd',{silent = true})

-- exchange text
vim.keymap.set("n","<leader>k","yyddkP",{silent = true})
vim.keymap.set("n","<leader>j","yyddp",{silent = true})

