return {
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("Comment").setup({
        -- 基本映射
        padding = true,  -- 在注释标记后添加空格
        sticky = true,   -- 光标保持在位置
        ignore = nil,    -- 忽略空行

        -- 切换映射
        toggler = {
          line = "<C-/>",   -- 行注释切换 (这个在终端可能不起作用)
          block = "gbc",    -- 块注释切换
        },

        -- 操作符映射
        opleader = {
          line = "gc",      -- 行注释
          block = "gb",     -- 块注释
        },

        -- 额外映射
        extra = {
          above = "gcO",    -- 在上方添加注释
          below = "gco",    -- 在下方添加注释
          eol = "gcA",      -- 在行尾添加注释
        },

        -- 启用键位映射
        mappings = {
          basic = true,     -- 基本映射 (gcc, gc, gb)
          extra = true,     -- 额外映射
        },

        -- 预钩子
        pre_hook = nil,
        post_hook = nil,
      })
    end,
  },
}
