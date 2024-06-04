require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dus", function ()
  local widgets = require('dap.ui.widgets');
  local sidebar = widgets.sidebar(widgets.scopes);
  sidebar.open();
end, { desc = "Open debug sidebar" })

map("n", "<leader>rcu", function ()
  require('crates').upgrade_all_crates()
end, { desc = "Update rust crates" })
-- Examples
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
