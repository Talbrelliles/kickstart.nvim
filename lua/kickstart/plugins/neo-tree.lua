-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>lf', ':Neotree filesystem reveal<CR>', { desc = 'NeoTree filesystem' } },
    { '<leader>lg', ':Neotree git_status reveal<CR>', { desc = 'NeoTree git status' } },
    { '<leader>lb', ':Neotree buffers reveal<CR>', { desc = 'NeoTree buffers' } },
    { '<leader>ll', ':Neotree last reveal<CR>', { desc = 'NeoTree last' } },
    { '<leader>lq', ':Neotree close<CR>', { desc = 'close NeoTree' } },
  },
  opts = {
    close_if_last_window = true,
    source_selectore = {
      winbar = true,
      statusline = true,
    },
    window = {
      mappings = {
        ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
      },
    },
  },
}
