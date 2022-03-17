if(not vim.g.vscode)
  then
    require("basic.config")
    require("basic.plugins")
    require("basic.colorscheme")
end

require("basic.settings")
require("basic.keybinds")


