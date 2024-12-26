return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreview" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_auto_start = 0        -- don't auto-start preview
      vim.g.mkdp_auto_close = 1        -- auto-close preview when changing buffers
      vim.g.mkdp_refresh_slow = 0      -- refresh preview in real-time
      vim.g.mkdp_browser = ""          -- use default browser
      vim.g.mkdp_echo_preview_url = 1  -- echo preview page url
      vim.g.mkdp_preview_options = {
        disable_sync_scroll = 0,        -- sync scrolling enabled
        disable_filename = 0,
      }
      vim.g.mkdp_theme = 'dark'        -- preview theme
    end,
    ft = { "markdown" },               -- only load for markdown files
  }
}
