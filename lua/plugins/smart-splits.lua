return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  config = function()
    require('smart-splits').setup {
      resize_mode = {
        silent = true,
        hooks = {
          on_enter = function()
            vim.notify 'Entering resize mode'
          end,
          on_leave = function()
            vim.notify 'Exiting resize mode, bye'
          end,
        },
      },
    }
    -- recommended mappings
    -- resizing splits
    -- these keymaps will also accept a range,
    -- for example `10<C-left>` will `resize_left` by `(10 * config.default_amount)`
    vim.keymap.set('n', '<C-left>', require('smart-splits').resize_left)
    vim.keymap.set('n', '<C-down>', require('smart-splits').resize_down)
    vim.keymap.set('n', '<C-up>', require('smart-splits').resize_up)
    vim.keymap.set('n', '<C-right>', require('smart-splits').resize_right)
    -- moving between splits
    vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
    vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
    vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
    vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
    vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
    -- swapping buffers between windows
    vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
    vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
    vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
    vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
  end,
}
