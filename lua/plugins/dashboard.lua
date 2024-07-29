return {
  'goolord/alpha-nvim',
  dependencies = { 'BlakeJC94/alpha-nvim-fortune' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Set header
    dashboard.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('f', '  > Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    local fortune = require 'alpha.fortune'
    dashboard.section.footer.val = fortune()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[
    autocmd FileType alpha setlocal nofoldenable
    ]]
  end,
}
