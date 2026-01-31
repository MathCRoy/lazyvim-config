return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").live_grep({
            path_display = { "smart" },
          })
        end,
        desc = "Search in files",
      },
    },
  },
}
