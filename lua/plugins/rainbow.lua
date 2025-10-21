return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local rainbow_delimiters = require("rainbow-delimiters")

      require("rainbow-delimiters.setup").setup({
        strategy = {
          -- 全局策略
          [''] = rainbow_delimiters.strategy['global'],
          -- 针对特定语言的策略
          vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          -- 使用默认查询
          [''] = 'rainbow-delimiters',
          -- 针对特定语言的查询
          lua = 'rainbow-blocks',
        },
        priority = {
          -- 默认优先级
          [''] = 110,
          lua = 210,
        },
        highlight = {
          -- 彩虹颜色 (7种颜色循环)
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      })
    end,
  },
}
