vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.shiftwidth = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.breakindent = true
vim.o.undofile = true
--
vim.o.ignorecase = true
vim.o.smartcase = true
--
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
--
vim.o.timeoutlen = 300
--
-- vim.o.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
--
-- vim.o.inccommand = 'split'
vim.o.scrolloff = 10
--
vim.o.confirm = true

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.diagnostic.config {
  virtual_text = true, -- Enable inline virtual text for diagnostics
  -- Other options like severity_sort, float, etc. can be configured here
}
