return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    -- vim.g.mkdp_browser = "/usr/bin/firefox"
  end,
  ft = { "markdown" },
  config = function()
    vim.keymap.set("n", "<leader>mdn", ":MarkdownPreview<CR>")
    vim.keymap.set("n", "<leader>mds", ":MarkdownPreviewStop<CR>")

    vim.g.mkdp_markdown_css = vim.fn.stdpath("config") .. "/assets/md.css"
    vim.g.mkdp_highlight_css = vim.fn.stdpath("config") .. "/assets/mdhl.css"
  end,
}
