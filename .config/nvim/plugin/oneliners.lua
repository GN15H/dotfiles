vim.pack.add({ 'https://github.com/windwp/nvim-autopairs' })

-- Replaces `event = "InsertEnter"` + `config = true`
vim.api.nvim_create_autocmd('InsertEnter', {
  once = true,
  callback = function()
    require('nvim-autopairs').setup({})
  end,
})
