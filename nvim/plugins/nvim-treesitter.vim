lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    incremental_selection = { enable = true },
    refactor = {
      highlight_definitions = { enable = true },
      smart_rename = { enable = true },
      navigation = { enable = true },
    },
    textobjects = { enable = true },
}
EOF
