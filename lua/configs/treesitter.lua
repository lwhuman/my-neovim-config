-- Syntax Highlighting
local options = {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "fish",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "printf",
        "python",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "rust",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

-- require("nvim-treesitter.configs").setup(options)

require("nvim-treesitter").install({
    "bash",
    "c",
    "cmake",
    "cpp",
    "fish",
    "lua",
    "luadoc",
    "make",
    "markdown",
    "printf",
    "python",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "rust",
})
