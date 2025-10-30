return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      harpoon:setup({
        settings = {
          save_on_toggle = true,
          sync_on_ui_close = true,
        },
      })

      local list = harpoon:list()
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }

      map("n", "<leader>a", function()
        list:add()
      end, vim.tbl_extend("force", opts, { desc = "Harpoon add" }))

      map("n", "<leader>ho", function()
        harpoon.ui:toggle_quick_menu(list)
      end, vim.tbl_extend("force", opts, { desc = "Harpoon menu" }))

      map("n", "<leader>h1", function()
        list:select(1)
      end, vim.tbl_extend("force", opts, { desc = "Harpoon select 1" }))
      map("n", "<leader>h2", function()
        list:select(2)
      end, vim.tbl_extend("force", opts, { desc = "Harpoon select 2" }))
      map("n", "<leader>h3", function()
        list:select(3)
      end, vim.tbl_extend("force", opts, { desc = "Harpoon select 3" }))
      map("n", "<leader>h4", function()
        list:select(4)
      end, vim.tbl_extend("force", opts, { desc = "Harpoon select 4" }))

      map({ "n", "i" }, "<C-S-P>", function()
        list:prev()
      end, vim.tbl_extend("force", opts, { desc = "Harpoon prev" }))
      map({ "n", "i" }, "<C-S-N>", function()
        list:next()
      end, vim.tbl_extend("force", opts, { desc = "Harpoon next" }))
    end,
  },
}

