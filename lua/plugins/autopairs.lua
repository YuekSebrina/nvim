return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local autopairs = require("nvim-autopairs")

      autopairs.setup({
        check_ts = true,  -- 使用 treesitter 检查
        ts_config = {
          lua = { "string" },  -- 在 lua 字符串中不自动配对
          javascript = { "template_string" },
          java = false,  -- 在 java 中不检查 treesitter
        },
        disable_filetype = { "TelescopePrompt", "vim" },
        -- 快速换行
        fast_wrap = {
          map = "<M-e>",  -- Alt+e 快速包裹
          chars = { "{", "[", "(", '"', "'" },
          pattern = [=[[%'%"%)%>%]%)%}%,]]=],
          end_key = "$",
          keys = "qwertyuiopzxcvbnmasdfghjkl",
          check_comma = true,
          highlight = "Search",
          highlight_grey = "Comment",
        },
      })

      -- blink.cmp 已经内置了自动括号功能,无需额外集成
      -- 只需要在 completion.lua 中启用 auto_brackets 即可
    end,
  },
}
