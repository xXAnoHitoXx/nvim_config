local dap = require('dap')
local dap_ui = require('dapui')
require("nvim-dap-virtual-text").setup()

dap.adapters.godot = {
  type = "server",
  host = '127.0.0.1',
  port = 6006,
}

dap.configurations.gdscript = {
  {
    type = "godot",
    request = "launch",
    name = "launch game",
    project = "${workspaceFolder}",
  },
  {
    type = "godot",
    request = "attach",
    name = "attach",
    project = "${workspaceFolder}",
  }
}

vim.keymap.set("n", "<leader>td", function() dap_ui.toggle() end)
vim.keymap.set('n', '<Leader>tt', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>te', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>tn', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>ts', function() require('dap').toggle_breakpoint() end)

dap_ui.setup()
