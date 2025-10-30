return {
  {
    "chentoast/marks.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      default_mappings = true,
      builtin_marks = { ".", "<", ">", "^" },
      cyclic = true,
      force_write_shada = true,
    },
    config = function(_, opts)
      require("marks").setup(opts)
    end,
  },
}

