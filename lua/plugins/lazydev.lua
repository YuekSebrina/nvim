return {
  {
    "folke/lazydev.nvim",
    ft = "lua",  -- 只在 Lua 文件中加载
    opts = {
      library = {
        -- 加载 luvit 类型
        { path = "luvit-meta/library", words = { "vim%.uv" } },
        -- 加载 LazyVim 类型
        { path = "LazyVim", words = { "LazyVim" } },
      },
      -- 总是启用
      enabled = true,
      -- 不使用 runtime 文件
      runtime = vim.env.VIMRUNTIME,
    },
  },
  -- 可选: luvit 类型定义
  { "Bilal2453/luvit-meta", lazy = true },
}
