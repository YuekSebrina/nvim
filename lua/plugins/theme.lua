return {
  -- 图标插件
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        -- 全局启用
        override = {},
        -- 颜色图标
        color_icons = true,
        -- 默认图标
        default = true,
        -- 严格模式
        strict = true,
      })
    end,
  },

  -- Tokyo Night 主题
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        -- 主题风格: storm, moon, night, day
        style = "moon",

        -- 透明背景
        transparent = false,

        -- 终端颜色
        terminal_colors = true,

        -- 样式配置
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark",
          floats = "dark",
        },

        -- 侧边栏暗色
        sidebars = { "qf", "help", "terminal", "packer" },

        -- 白天亮度调整
        day_brightness = 0.3,

        -- 隐藏不活动的状态栏
        hide_inactive_statusline = false,

        -- 变暗不活动窗口
        dim_inactive = false,

        -- 启用 lualine 支持
        lualine_bold = false,

        -- 自定义高亮
        on_highlights = function(hl, c)
          -- 可以在这里自定义高亮组
        end,
      })

      -- 应用主题
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- 状态栏
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          -- 主题 (自动匹配 tokyonight)
          theme = "tokyonight",

          -- 组件分隔符
          component_separators = { left = "", right = "" },

          -- 区块分隔符
          section_separators = { left = "", right = "" },

          -- 禁用的文件类型
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },

          -- 忽略焦点
          ignore_focus = {},

          -- 总是显示分隔条
          always_divide_middle = true,

          -- 全局状态栏
          globalstatus = true,

          -- 刷新时间
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },

        sections = {
          -- 左侧
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },

          -- 右侧
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },

        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },

        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  },
}
