-- Replaces `build = ':TSUpdate'`: update parsers whenever the plugin updates
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind == 'update' then
      vim.cmd 'TSUpdate'
    end
  end,
})

vim.pack.add {
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
}

-- Replaces `ensure_installed` (async; skips parsers already installed)
require('nvim-treesitter').install { 'lua', 'c', 'typescript' }

-- Replaces `highlight` and `indent`
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    -- start() errors if no parser exists for this filetype; pcall skips those
    if pcall(vim.treesitter.start, args.buf) then
      vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
