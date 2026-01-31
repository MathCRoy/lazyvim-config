return {
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  {
    "nickkadutskyi/jb.nvim",
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "#11131A" })
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
