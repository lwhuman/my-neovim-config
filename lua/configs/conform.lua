local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "isort", "black" },
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                BasedOnStyle: LLVM, \
                IndentWidth: 4, \
                AlignConsecutiveAssignments: Consecutive, \
                AlignConsecutiveMacros: Consecutive, \
                AlignEscapedNewlines: LeftWithLastLine}",
            },
        },
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
