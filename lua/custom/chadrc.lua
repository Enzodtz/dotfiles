require "custom.library.highlighted_foldtext"

local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldtext=[[luaeval('HighlightedFoldtext')()]]
opt.fillchars="fold: "
-- opt.foldtext = 'lua.vim.treeesitter.foldtext()'
opt.foldenable = false

-- Treat axaml as xml
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.axaml",
  command = "set filetype=xml"
})

---@type ChadrcConfig 
 local M = {
  mappings = {
    ["utils"] = {
      n = {
        ["<A-m>"] = {
          ":%s/\r$<CR>",
          "Remove ^m characters from buffer"
        }
      }
    }
  }
}
 M.ui = {theme = 'catppuccin'}
 M.plugins = "custom.plugins"
 return M
