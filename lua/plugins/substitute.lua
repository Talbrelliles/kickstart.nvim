return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>c", function()
      substitute.operator({register="+"})
    end, { desc = "Substitute with motion" })
    keymap.set("n", "<leader>cc", function()
      substitute.line({register="+"})
    end, { desc = "Substitute line" })
    keymap.set("n", "<leader>C", function()
      substitute.eol({register="+"})
    end, { desc = "Substitute to end of line" })
    keymap.set("x", "<leader>c", function()
      substitute.visual({register="+"})
    end, { desc = "Substitute in visual mode" })
  end,
}
