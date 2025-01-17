vim.cmd [[hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]]
vim.cmd [[hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]]
vim.cmd [[hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]]

local hop = require "hop"
hop.setup({
  case_insensitive = true,
  char2_fallback_key = "<CR>",
  quit_key = "<Esc>",
})

vim.keymap.set({ "n", "v" }, "f", "", {
  silent = true,
  noremap = true,
  callback = function()
    hop.hint_char2()
  end,
  desc = "nvim-hop char2",
})
