return {
  "https://github.com/nvim-treesitter/nvim-treesitter.git",
  ensure_installed = { "asm", "c", "cmake", "lua", "json", "javascript", "html", "css", "vim", "vimdoc", "query", "markdown", "markdown_inline", "yaml", "python", "bash", "powershell"},
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}
