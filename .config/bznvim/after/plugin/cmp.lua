local cmp = require('cmp')

cmp.setup({
  window = {
---@diagnostic disable-next-line: undefined-field
    completion = cmp.config.window.bordered(),
---@diagnostic disable-next-line: undefined-field
    documentation = cmp.config.window.bordered(),
  }
})
