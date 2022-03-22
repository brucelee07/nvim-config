if(not vim.g.vscode)
  then
    require("basic.config")
    require("basic.plugins")
    require("basic.colorscheme")
end

if(vim.g.vscode)
  then
    require("basic.vscode-keybinds")
end
require("basic.settings")
require("basic.keybinds")
require("conf.null-ls")


