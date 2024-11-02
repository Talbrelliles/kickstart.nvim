return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()
    local wk = require 'which-key'
    wk.add {
      { '<leader>a', group = '[A]uto-Restore' },
      { '<leader>a_', hidden = true },
      { '<leader>c', group = '[C]hange with reg' },
      { '<leader>c_', hidden = true },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>d_', hidden = true },
      { '<leader>g', group = 'lazy [G]it' },
      { '<leader>g_', hidden = true },
      { '<leader>h', group = 'Git [H]unk' },
      { '<leader>h_', hidden = true },
      { '<leader>l', group = '[L] Neo Tree' },
      { '<leader>l_', hidden = true },
      { '<leader>n', group = 'a[N]gular keybinds' },
      { '<leader>n_', hidden = true },
      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>s', group = '[S]earch' },
      { '<leader>s_', hidden = true },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>t_', hidden = true },
      { '<leader>v', group = '[V]env' },
      { '<leader>v_', hidden = true },
      { '<leader>w', group = '[W]indow' },
      { '<leader>w_', hidden = true },
      { '<leader>x', group = '[X] trouble' },
      { '<leader>x_', hidden = true },
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    }
  end,
}
