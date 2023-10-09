return {
  'numToStr/Comment.nvim',
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring"
  },
  event = { "BufReadPre", "BufNewFile" },
  lazy = false,
  config = function ()
    require('ts_context_commentstring').setup()
    require("Comment").setup({
      mappings = false,
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    })

    -- Mappings
    local api = require('Comment.api')
    local esc = vim.api.nvim_replace_termcodes(
      "<ESC>", true, false, true
    )
    vim.keymap.set("n", "<leader>/", api.toggle.linewise.current)
    vim.keymap.set('x', '<leader>/', function()
      vim.api.nvim_feedkeys(esc, 'nx', false)
      api.toggle.linewise(vim.fn.visualmode())
    end)
  end
}
