require 'config.options'
require 'config.keybinds'
require 'config.lazy'

vim.lsp.enable {
  'clangd',
  'typescript',
  'lua_ls',
  'pyright',
  'cssls',
  'terraformls',
}
