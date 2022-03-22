
local keymap = vim.api.nvim_set_keymap
--keymap('i', 'jk', '<ESC>', {})

local opts = {noremap = true}
--keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', 'zM', ':call VSCodeNotify("editor.foldAll")<CR>', opts)
keymap('n', 'zR', ':call VSCodeNotify("editor.unfoldAll")<CR>', opts)
keymap('n', 'zc', ':call VSCodeNotify("editor.fold")<CR>', opts)
keymap('n', 'zC', ':call VSCodeNotify("editor.foldRecursively")<CR>', opts)
keymap('n', 'zO', ':call VSCodeNotify("editor.unfoldRecursively")<CR>', opts)
keymap('n', 'zo', ':call VSCodeNotify("editor.unfold")<CR>', opts)
keymap('n', 'za', ':call VSCodeNotify("editor.toggleFold")<CR>', opts)
--keymap('n', '<space>', ':call VSCodeNotify("workbench.action.quickOpen")<CR>', opts)
keymap('n', '<space>', ':call VSCodeNotify("whichkey.show")<CR>', opts)

