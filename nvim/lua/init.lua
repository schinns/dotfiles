require('keymaps')
require('lsp')
require('plugins')
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }

local vim = vim
vim.g.mapleader = ','
vim.wo.number = true
vim.wo.wrap = false
vim.wo.relativenumber = true

-- 1 tab == 2 spaces
vim.o.tabstop = 2 -- num of visual space per <TAB> char
vim.o.softtabstop = 2 -- num of spaces for TAB when editing, useful for backspace
vim.o.shiftwidth = 0 -- indentation level

local api = vim.api
local luajob = require('luajob')

-- refmt on save
local reasonGrp = api.nvim_create_augroup("reasonml", { clear = true })
api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*.re", "*.rei"},
  group = reasonGrp,
  callback = function()
		refmt = luajob:new({
			cmd = "make refmt",
			cwd = os.getenv("AHREFS_MONOREPO").."/frontend",
			on_stdout = function() 
				vim.cmd("edit!") 
				refmt.stop()
			end
		})
		refmt.start()
  end
})

-- fmt on save
local ocamlGrp = api.nvim_create_augroup("ocaml", { clear = true })
api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*.ml", "*.mli"},
  group = ocamlGrp,
  callback = function()
		fmt = luajob:new({
			cmd = "make fmt",
			cwd = os.getenv("AHREFS_MONOREPO").."/backend",
			on_stdout = function() 
				vim.cmd("edit!") 
				fmt.stop()
			end
		})
		fmt.start()
  end
})
