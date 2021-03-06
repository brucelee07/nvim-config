-- leader 键设置为空格                                    
vim.g.mapleader = " "    
    
-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {    
    gmap = vim.api.nvim_set_keymap,    
    bmap = vim.api.nvim_buf_set_keymap,    
    dgmap = vim.api.nvim_del_keymap,    
    dbmap = vim.api.nvim_buf_del_keymap,    
    opts = {noremap = true, silent = true}    
}    
    
local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('n', 'W', ':w<CR>', {})
keymap('n', 'Q', ':q<CR>', {})
keymap('n', 'J', '5j', {})
keymap('n', 'K', '5k', {})
keymap('n', 'L', '5l', {})
keymap('n', 'H', '5h', {})
keymap('i', 'jj', '<ESC>', {})
keymap('i', 'jk', '<ESC>', {})
local opts = { noremap = true, silent = true }
-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Move text up and down
--keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
---- Move text up and down
--keymap("v", "<A-j>", ":m .+1<CR>==", opts)
--keymap("v", "<A-k>", ":m .-2<CR>==", opts)
--keymap("v", "p", '"_dP', opts)
--
---- Visual Block --
---- Move text up and down
--keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
--keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
--keymap('n', '<space>', ':call VSCodeNotify("whichkey.show")', opts)

--markdown 
vim.keybinds.gmap("n", "mv", "<cmd>Glow<CR>", vim.keybinds.opts)
-- 设置format timeout 2000
vim.keybinds.gmap("n", "F", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 2000)<CR>", vim.keybinds.opts)    
-- 插入模下 jj 退出插入模式    
vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)    
-- vim.keybinds.gmap("c", "<C-j>", "<C-n>", {noremap = false})    
-- vim.keybinds.gmap("c", "<C-k>", "<C-p>", {noremap = false})    
    
-- 用 H 和 L 代替 ^ 与 $    
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)    
-- vim.keybinds.gmap("n", "nn", "i<ESC>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<CR>", "o<ESC>k", vim.keybinds.opts)    
vim.keybinds.gmap("n", "N", "J", vim.keybinds.opts)    
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)    
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)    
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)    
vim.keybinds.gmap("v", "J", "5j", vim.keybinds.opts)    
vim.keybinds.gmap("v", "K", "5k", vim.keybinds.opts)    
vim.keybinds.gmap("v", "mm", "<ESC>", vim.keybinds.opts)    
    
-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页    
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)    
    
-- 插入模式下的上下左右移动    
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)    
    
-- 修改分屏大小    
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)    
    
-- 正常模式下按 ESC 取消高亮显示    
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)    
    
-- 通过 leader cs 切换拼写检查    
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts) 

-- vim.bo.expandtab = true
-- vim.bo.shiftwidth = 4
-- vim.bo.softtabstop = 4


vim.wo.number = true
vim.wo.relativenumber = true

