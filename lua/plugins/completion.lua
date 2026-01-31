return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Tab>"] = { "select_and_accept", "fallback" },
    },
    completion = {
      trigger = {
        show_on_insert_on_trigger_character = true,
        show_on_keyword = true,
        show_on_trigger_character = true,
      },
      list = {
        selection = { preselect = true, auto_insert = false },
      },
    },
    sources = {
      providers = {
        lsp = {
          trigger_characters = { ".", ":", "<", '"', "/" },
        },
      },
    },
  },
}
