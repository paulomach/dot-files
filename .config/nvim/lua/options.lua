-- clipboard copy
vim.o.clipboard="unnamedplus"

-- tabs
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab=true

vim.o.modifiable=true

-- split
vim.o.splitright=true
vim.o.splitbelow=true
vim.opt.diffopt = vim.opt.diffopt + "vertical"

-- indent
vim.o.autoindent=true

-- highlight on search
vim.o.hlsearch = false

-- mouse mode
vim.o.mouse = ''

-- break indent
vim.o.breakindent = true

-- undo history
vim.opt.undofile = true

-- insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- colorscheme
vim.o.termguicolors = true

-- completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- number
vim.o.number = true
vim.o.relativenumber = true

-- save cursor position on files
local group = vim.api.nvim_create_augroup("jump_last_position", { clear = true })
vim.api.nvim_create_autocmd(
	"BufReadPost",
	{callback = function()
			local row, col = unpack(vim.api.nvim_buf_get_mark(0, "\""))
			if {row, col} ~= {0, 0} then
				vim.api.nvim_win_set_cursor(0, {row, 0})
			end
		end,
	group = group
	}
)

