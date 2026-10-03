return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            keywordStyle = { italic = false },
            statementStyle = { italic = false },

            overrides = function(colors)
                return {
                    ["@variable.builtin"] = { italic = false },
                    ["@variable"] = { italic = false },
                    ["@constant.builtin"] = { italic = false },

                    ["@lsp.type.variable"] = { italic = false },
                }
            end,
        })

        vim.cmd.colorscheme("kanagawa-wave")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    end
}
