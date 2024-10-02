return {
  'goolord/alpha-nvim',
  dependencies = { 'BlakeJC94/alpha-nvim-fortune' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Set header
    dashboard.section.header.val = {
      '888b    888 8888888888 .d88888b.  888     888 8888888 888b     d888',
      '8888b   888 888       d88P" "Y88b 888     888   888   8888b   d8888',
      '88888b  888 888       888     888 888     888   888   88888b.d88888',
      '888Y88b 888 8888888   888     888 Y88b   d88P   888   888Y88888P888',
      '888 Y88b888 888       888     888  Y88b d88P    888   888 Y888P 888',
      '888  Y88888 888       888     888   Y88o88P     888   888  Y8P  888',
      '888   Y8888 888       Y88b. .d88P    Y888P      888   888   "   888',
      '888    Y888 8888888888 "Y88888P"      Y8P     8888888 888       888',
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
