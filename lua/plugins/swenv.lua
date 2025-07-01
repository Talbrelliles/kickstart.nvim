return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  opts = {
    options = {
      debug = true
    }
  },
  config = function(_, opts)
    require('venv-selector').setup(opts)
    vim.keymap.set('n', ',v', '<cmd>VenvSelect<cr>', { desc = 'Switch [V]env' })

    vim.api.nvim_create_autocmd({ 'BufEnter' }, {
      callback = function(nested_opts)
        if vim.bo.filetype == 'python' then
          local venv_path = nil
          local dir_template = '%:p:h'
          local dir_to_check = nil
          while not venv_path and dir_to_check ~= '/' do
            dir_to_check = vim.fn.expand(dir_template)
            if vim.fn.filereadable(dir_to_check .. '/.venv') == 1 then
              venv_path = dir_to_check .. '/.venv'
            else
              dir_template = dir_template .. ':h'
            end
          end
          if venv_path then
            local venv_file = io.open(venv_path)
            if venv_file then
              local venv_api     = require "venv-selector"
              local current_venv = venv_api.venv()
              local ws_venv      = venv_file:read()
              if ws_venv ~= current_venv then
                local set_path = vim.fn.expand("~") .. "/.virtualenvs/" .. ws_venv .. "/bin/python"
                venv_api.activate_from_path(set_path)
              end
              venv_file:close()
            end
          end
        end
      end,
      group = vim.api.nvim_create_augroup('python_venv', { clear = true }),
    })
  end

}
