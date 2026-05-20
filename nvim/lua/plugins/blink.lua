return {
  {
    "saghen/blink.cmp",
    version = "2.*",

    build = function()
      require("blink.cmp").build():wait(60000)
    end,

    dependencies = {
      "saghen/blink.lib",
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        preset = "none",

        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-y>"] = { "accept", "fallback" },
        ["<C-Space>"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}
