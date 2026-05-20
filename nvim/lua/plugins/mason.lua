return {
  {
    "mason-org/mason.nvim",
    name = "mason",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "jsonls",
        "eslint",
      },
      automatic_enable = true,
    },
  },
}
