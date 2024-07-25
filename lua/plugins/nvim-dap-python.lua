return {
  'mfussenegger/nvim-dap-python',
  config = function()
    require('dap-python').setup '/home/talmage/.virtualenvs/debugpy/bin/python'
  end,
}
