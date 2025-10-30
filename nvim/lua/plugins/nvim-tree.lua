return {
  {
    "nvim-tree/nvim-tree.lua",
    version = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
    keys = {
      {
        "<leader>e",
        function()
          require("nvim-tree.api").tree.toggle({ focus = true })
        end,
        desc = "Toggle file tree",
      },
      {
        "<leader>fe",
        function()
          require("nvim-tree.api").tree.find_file({ open = true, focus = true })
        end,
        desc = "Reveal current file",
      },
    },
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        hijack_cursor = true,
        view = {
          width = 32,
          side = "left",
        },
        renderer = {
          group_empty = true,
          highlight_git = true,
          icons = {
            glyphs = {
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
        },
        filters = {
          dotfiles = false,
        },
        git = {
          enable = true,
          ignore = false,
        },
        actions = {
          open_file = {
            quit_on_open = false,
            resize_window = true,
          },
        },
      })
    end,
  },
}

