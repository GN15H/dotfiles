local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end
return {
	--    {
	-- "folke/tokyonight.nvim",
	-- config = function()
	--     vim.cmd.colorscheme "tokyonight"
	--     -- enable_transparency()
	-- end
	--    },
    {
	'Mofiqul/vscode.nvim',
	config = function()
	    require('vscode').setup({
		styles = {
		    comments = { italic = false},
		}
	    })
	    vim.cmd.colorscheme "vscode"
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	config = function()
	    -- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
	    local colors = {
	      blue   = '#80a0ff',
	      cyan   = '#72a3d4',
	      black  = '#080808',
	      white  = '#c6c6c6',
	      red    = '#ff5189',
	      violet = '#72a3d4',
	      inactive_main = '#333333',
	      grey   = '#303030',
	    }

	    local bubbles_theme = {
	      normal = {
		a = { fg = colors.black, bg = colors.cyan },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.white },
	      },

	      insert = { a = { fg = colors.black, bg = colors.blue } },
	      visual = { a = { fg = colors.black, bg = colors.cyan } },
	      replace = { a = { fg = colors.black, bg = colors.red } },

	      inactive = {
		a = { fg = colors.white, bg = colors.inactive_main },
		b = { fg = colors.white, bg = colors.inactive_main },
		c = { fg = colors.white },
	      },
	    }

	    require('lualine').setup {
	      options = {
		theme = bubbles_theme,
		component_separators = '',
		section_separators = { left = '', right = '' },
	      },
	      sections = {
		lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
		lualine_b = { 'filename', 'branch' },
		lualine_c = {
		  '%=', --[[ add your center components here in place of this comment ]]
		},
		lualine_x = {},
		lualine_y = { 'filetype', 'progress' },
		lualine_z = {
		  { 'location', separator = { right = '' }, left_padding = 2 },
		},
	      },
	      inactive_sections = {
		lualine_a = { 'filename' },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { 'location' },
	      },
	      tabline = {},
	      extensions = {},
	    }
	end
    }
}
