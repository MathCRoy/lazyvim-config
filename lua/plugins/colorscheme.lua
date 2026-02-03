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
