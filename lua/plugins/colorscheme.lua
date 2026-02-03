return {
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  {
    "nickkadutskyi/jb.nvim",
    priority = 1000,
    init = function()
      local bg = "#11131A"
      vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = bg })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = bg })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
          vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg })
          vim.api.nvim_set_hl(0, "Pmenu", { bg = bg })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
          vim.api.nvim_set_hl(0, "LineNr", { bg = bg, fg = "#3a3a3a" })
          -- Gray out warnings
          local gray = "#6b6b6b"
          vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = gray })
          vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = gray })
          vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = gray, undercurl = true })
          vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = gray })
          -- Scope/indent lines same color as line numbers
          local lineNrColor = "#3a3a3a"
          vim.api.nvim_set_hl(0, "SnacksIndent", { fg = lineNrColor })
          vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = lineNrColor })
          vim.api.nvim_set_hl(0, "SnacksIndentChunk", { fg = lineNrColor })
          for i = 1, 8 do
            vim.api.nvim_set_hl(0, "SnacksIndent" .. i, { fg = lineNrColor })
          end
          vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = lineNrColor })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "jb",
    },
  },
}
