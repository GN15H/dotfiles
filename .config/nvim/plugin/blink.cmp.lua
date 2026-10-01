vim.pack.add({
  'https://github.com/rafamadriz/friendly-snippets',
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.*') },
})

---@module 'blink.cmp'
---@type blink.cmp.Config
local opts = {
  keymap = { preset = 'default' },
  appearance = {
    nerd_font_variant = 'mono',
  },
  completion = {
    documentation = {
      auto_show = false,
      auto_show_delay_ms = 300,
    },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = { implementation = 'prefer_rust_with_warning' },
}

require('blink.cmp').setup(opts)
