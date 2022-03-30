-- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
context_commentstring = {
    enable = true
}
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/p00f/nvim-ts-rainbow
require("nvim-treesitter.configs").setup(
    {
        -- 安装的高亮支持来源
        ensure_installed = "maintained",
        -- 同步下载高亮支持
        sync_install = false,
        -- 高亮相关
        highlight = {
            -- 启用高亮支持
            enable = true,
            -- 使用 treesitter 高亮而不是 neovim 内置的高亮
            additional_vim_regex_highlighting = false
        },
        -- 范围选择
        incremental_selection = {
            enable = true,
            keymaps = {
                -- 初始化选择
                init_selection = "<CR>",
                -- 递增
                node_incremental = "<CR>",
                -- 递减
                node_decremental = "<BS>",
                -- 选择一个范围
                scope_incremental = "<TAB>"
            }
        },
        -- 缩进，关闭
        indent = {
            enable = false
        },
        -- 彩虹括号，由 nvim-ts-rainbow 插件提供
        -- rainbow = {
        --     enable = true,
        --     extended_mode = true
        --     -- colors = {}, -- table of hex strings
        --     -- termcolors = {} -- table of colour name strings
        -- },
    }
)
-- require('nvim-treesitter.configs').setup {
--   -- One of "all", "maintained" (parsers with maintainers), or a list of languages
--   ensure_installed = "maintained",
--
--   -- Install languages synchronously (only applied to `ensure_installed`)
--   sync_install = false,
--
--   -- List of parsers to ignore installing
--   ignore_install = { "javascript" },
--
--   highlight = {
--     -- `false` will disable the whole extension
--     enable = true,
--
--     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--     -- the name of the parser)
--     -- list of language that will be disabled
--     disable = { "c", "rust" },
--
--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
-- }
