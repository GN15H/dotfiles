require 'config.options'
require 'config.keybinds'

vim.lsp.enable {
  'clangd',
  'typescript',
  'lua_ls',
  'pyright',
  'cssls',
  'terraformls',
}
