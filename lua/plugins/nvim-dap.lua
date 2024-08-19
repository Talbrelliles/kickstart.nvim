return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'nvim-dap-python',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    --Python
    require('dap-python').setup '/home/talmage/.virtualenvs/debugpy/bin/python'
    require('dapui').setup()
    require('dap-python').resolve_python = function()
      return require('swenv').swenv_api.get_current_venv()
    end

    --GODOT
    dap.adapters.godot = {
      type = 'server',
      host = '127.0.0.1',
      port = 6006,
    }
    dap.configurations.gdscript = {
      type = 'godot',
      request = 'launch',
      name = 'Launch scene',
      project = '${workspaceFolder}',
    }

    --UI setup
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<Leader>Db', dap.toggle_breakpoint, { desc = 'Toggle Breakpoint for Debugger' })
    vim.keymap.set('n', '<Leader>Dc', dap.continue, { desc = 'Start/Continue Debugging' })
    vim.keymap.set({ 'n', 'v' }, '<Leader>De', dapui.eval, { desc = 'Evaluate Current Expression' })
  end,
}
