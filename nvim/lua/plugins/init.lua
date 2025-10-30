return {
  { "folke/todo-comments.nvim", opts = {} },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_palette = "mix"
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
    end,
    config = function()
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
  { import = "plugins.nvim-tree" },
  { import = "plugins.lualine" },
  { import = "plugins.cmp" },
  { import = "plugins.lsp" },
  { import = "plugins.treesitter" },
  { import = "plugins.telescope" },
  { import = "plugins.marks" },
  { import = "plugins.harpoon" },
}
