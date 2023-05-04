local opt = vim.opt -- for conciseness
local options = {
  -- line numbers
  relativenumber = true,
  number = true,

  -- tabs & indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,

  -- line wrapping
  wrap = false,

  -- search settings
  ignorecase = true,
  smartcase = true,

  -- appearance
  background = "dark",
  termguicolors = true,
  signcolumn = "no",

  -- backspace
  backspace = "indent,eol,start",


  -- split windows
  splitright = true,
  splitbelow = true,

}
opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus") -- clipboard

for k, v in pairs(options) do
  opt[k] = v
end
