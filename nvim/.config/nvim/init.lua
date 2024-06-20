local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Cloning lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
else
  print("lazy.nvim already cloned.")
end
vim.opt.rtp:prepend(lazypath)
print("Runtime path:", vim.opt.rtp:get())

require("vim-options")
require("lazy").setup("plugins")

