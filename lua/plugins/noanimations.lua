return {
  -- Disable snacks animations, keep indent but no scope highlight
  {
    "folke/snacks.nvim",
    opts = {
      animate = { enabled = false },
      scroll = { enabled = false },
      indent = {
        enabled = true,
        animate = { enabled = false },
        scope = { enabled = false },
      },
    },
  },
  -- Disable noice animations
  {
    "folke/noice.nvim",
    opts = {
      views = {
        cmdline_popup = {
          position = { row = 5, col = "50%" },
        },
      },
      lsp = {
        progress = {
          enabled = true,
          throttle = 1,
        },
      },
    },
  },
  -- Disable mini.indentscope completely
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },
}
