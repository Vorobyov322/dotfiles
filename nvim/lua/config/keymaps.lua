vim.g.mapleader = " "
vim.keymap.set("n", "<leader><leader>", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("i", "<A-c>", "<Esc>")
vim.keymap.set("i", "<A-x>", "<BS>")
vim.keymap.set("i", "<A-z>", "<CR>")
vim.keymap.set("n", "<A-c>", "<Esc>")

vim.keymap.set("n", "<C-=>", function()
  local line = vim.api.nvim_get_current_line()
  local indent, rest = line:match("^(%s*)(.-)$")

  if rest:match("^#") then
    rest = rest:gsub("^# ?", "", 1)
  else
    if rest == "" then
      rest = "#"
    else
      rest = "# " .. rest
    end
  end

  vim.api.nvim_set_current_line(indent .. rest)
end, { desc = "Toggle comment (#)" })

