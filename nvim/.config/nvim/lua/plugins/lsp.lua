return {
    {
        "neovim/nvim-lspconfig",
    },

    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "yamlls",
                "helm_ls",
                "bashls",
                "dockerls",
                "docker_compose_language_service",
                "gopls",
                "pyright",
                "jdtls",
                "clangd",
                "terraformls",
                "tflint",
                "jsonls",
                "taplo",
                "lua_ls",
            },
        },
        dependencies = {
            { "mason-org/mason.nvim" },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } }
            }
        }
    }
}
