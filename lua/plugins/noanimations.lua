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
    init = function()
      local bg = "#11131A"
      local function set_snacks_hl()
        -- Snacks explorer/picker background
        vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerListNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerListNormalFloat", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPicker", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerNormalFloat", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksNormalNC", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksExplorer", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksExplorerNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksDashboardNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerBox", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerBoxNormalFloat", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerBoxTitle", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerInput", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksPickerInputNormalFloat", { bg = bg })
        vim.api.nvim_set_hl(0, "SnacksTitle", { bg = bg })
        -- Telescope
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = bg })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = bg })
      end
      set_snacks_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_snacks_hl })
    end,
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
