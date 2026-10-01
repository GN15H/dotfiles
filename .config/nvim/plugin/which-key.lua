vim.pack.add({ 'https://github.com/folke/which-key.nvim' })

-- Replaces `event = "VimEnter"` + `opts`
vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function()
    require('which-key').setup({ delay = 0 })
  end,
})

-- Replaces `keys`
vim.keymap.set('n', '<leader>?', function()
  require('which-key').show({ global = false })
end, { desc = 'Buffer Local Keymaps (which-key)' })
