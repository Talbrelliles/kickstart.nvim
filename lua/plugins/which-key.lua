return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>a'] = { name = '[A]uto-Restore', _ = 'which_key_ignore' },
      ['<leader>c'] = { name = '[C]hange with reg', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'lazy [G]it', _ = 'which_key_ignore' },
      ['<leader>v'] = { name = '[V]env', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = '[X] trouble', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = '[L] Neo Tree', _ = 'which_key_ignore' },
      ['<leader>n'] = { name = 'a[N]gular keybinds', _ = 'which_key_ignore' },
    }
    -- visual mode
    require('which-key').register({
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end,
}
