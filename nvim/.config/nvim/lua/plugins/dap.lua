return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
            "mfussenegger/nvim-dap-python",
            "jay-babu/mason-nvim-dap.nvim",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup()

            require("mason-nvim-dap").setup({
                ensure_installed = { "python" },
                automatic_installation = true,
            })

            local mason_path = vim.fn.stdpath("data")
                .. "/mason/packages/debugpy/venv/bin/python"

            require("dap-python").setup(mason_path)

            dap.listeners.after.event_initialized["dapui"] = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated["dapui"] = function()
                dapui.close()
            end

            dap.listeners.before.event_exited["dapui"] = function()
                dapui.close()
            end

            vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
            vim.keymap.set("n", "<F5>", dap.continue)
            vim.keymap.set("n", "<F10>", dap.step_over)
            vim.keymap.set("n", "<F11>", dap.step_into)
            vim.keymap.set("n", "<F12>", dap.step_out)

            vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
            vim.keymap.set("n", "<leader>dc", dap.continue)
            vim.keymap.set("n", "<leader>dr", dap.repl.open)
            vim.keymap.set("n", "<leader>du", dapui.toggle)

            vim.keymap.set("n", "<leader>dt", function()
                require("dap-python").test_method()
            end)

            vim.keymap.set("n", "<leader>dT", function()
                require("dap-python").test_class()
            end)
        end,
    },
}
