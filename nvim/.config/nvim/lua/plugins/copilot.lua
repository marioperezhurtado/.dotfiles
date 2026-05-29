return {
  "github/copilot.vim",
  name = "copilot",
  lazy = false,

  config = function()
    vim.g.copilot_filetypes = {
      markdown = true,
      mdx = true,
    }

    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })
  end,
}
