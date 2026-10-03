return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            json = { "prettier" },
            yaml = { "prettier" },
            toml = { "taplo" },
            html = { "prettier" },
            sh = { "shfmt" },
            bash = { "shfmt" },
            dockerfile = { "hadolint" },
            go = { "gofumpt", "goimports" },
            python = { "isort", "black" },
            terraform = { "terraform_fmt" },
            hcl = { "terraform_fmt" },
            lua = { "stylua" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            sql = { "pg_format" },
            javascript = { "prettier" },
        },
        formatters = {
            prettier = {
                prepend_args = { "--tab-width", "4" },
            }
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
