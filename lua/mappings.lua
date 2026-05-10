require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- LSP Code Action key binding was removed from
-- NVChad default keybindings for some reason.
map("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })
