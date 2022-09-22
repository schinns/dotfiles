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
