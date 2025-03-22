-- 启用行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 缩进与制表符
vim.opt.tabstop = 4         
vim.opt.shiftwidth = 4     
vim.opt.expandtab = true  
vim.opt.autoindent = true 

-- 启用语法高亮
vim.cmd("syntax enable")
vim.cmd("syntax on")

-- 启用更好的颜色支持
vim.opt.termguicolors = true

-- 启用括号匹配
vim.opt.showmatch = true

-- 启用鼠标
vim.opt.mouse = "a"

-- 启用剪贴板共享
vim.opt.clipboard = "unnamedplus"

-- 启用滚动偏移，避免光标贴边
vim.opt.scrolloff = 3

