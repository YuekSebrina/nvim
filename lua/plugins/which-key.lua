return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      ---@type false | "classic" | "modern" | "helix"
      preset = "helix",
      win = {
        title = false,
        width = 0.6,
        border = "rounded",
      },
      -- 排序方式：按字母顺序
      sort = { "alphanum" },
      -- stylua: ignore
      spec = {
        -- 基础操作
        { "<leader>w",   desc = "保存文件",             icon = "󰆓" },
        { "<leader>q",   desc = "退出",                 icon = "󰗼" },
        { "<leader>wq",  desc = "保存并退出",           icon = "󰗼" },

        -- 文件和缓冲区
        { "<leader>e",   desc = "切换文件树",           icon = "" },
        { "<leader>E",   desc = "定位当前文件",         icon = "" },
        { "<leader><space>", desc = "智能查找文件",     icon = "" },
        { "<leader>,",   desc = "缓冲区列表",           icon = "" },

        -- Buffer 管理
        { "<leader>b",   group = "缓冲区",              icon = "" },
        { "<leader>bd",  desc = "删除缓冲区",           icon = "" },
        { "<leader>bo",  desc = "关闭其他缓冲区",       icon = "" },
        { "<leader>bp",  desc = "选择缓冲区",           icon = "" },
        { "<leader>bc",  desc = "选择并关闭缓冲区",     icon = "" },

        -- 代码操作
        { "<leader>c",   group = "代码",                icon = "" },
        { "<leader>ca",  desc = "代码操作",             icon = "" },
        { "<leader>rn",  desc = "重命名符号",           icon = "" },
        { "<leader>d",   desc = "显示诊断信息",         icon = "" },

        -- Git 操作
        { "<leader>g",   group = "Git",                 icon = "" },
        { "<leader>gg",  group = "Git 更多",            icon = "" },
        { "<leader>gh",  group = "Git 块操作",          icon = "" },
        { "<leader>ggl", desc = "Git 日志",             icon = "" },
        { "<leader>ggd", desc = "Git 差异",             icon = "" },
        { "<leader>ggb", desc = "Git 责任归属",         icon = "" },
        { "<leader>ggB", desc = "Git 浏览器",           icon = "" },

        -- 搜索
        { "<leader>s",   group = "搜索",                icon = "" },
        { "<leader>sf",  desc = "查找文件",             icon = "" },
        { "<leader>sg",  desc = "全局搜索",             icon = "" },
        { "<leader>sb",  desc = "缓冲区",               icon = "" },
        { "<leader>sr",  desc = "最近文件",             icon = "" },
        { "<leader>sp",  desc = "项目",                 icon = "" },
        { "<leader>sd",  desc = "诊断列表",             icon = "" },
        { "<leader>sD",  desc = "当前缓冲区诊断",       icon = "" },
        { "<leader>ss",  desc = "LSP 符号",             icon = "" },
        { "<leader>sS",  desc = "LSP 工作区符号",       icon = "" },
        { "<leader>sk",  desc = "键映射",               icon = "" },
        { "<leader>sH",  desc = "帮助",                 icon = "" },
        { "<leader>sn",  desc = "通知历史",             icon = "" },
        { "<leader>sc",  desc = "命令",                 icon = "" },
        { "<leader>s:",  desc = "命令历史",             icon = "" },
        { "<leader>s/",  desc = "搜索历史",             icon = "" },
        { '<leader>s"',  desc = "寄存器",               icon = "" },
        { "<leader>sa",  desc = "拼写建议",             icon = "" },
        { "<leader>sA",  desc = "自动命令",             icon = "" },
        { "<leader>sh",  desc = "高亮组",               icon = "" },
        { "<leader>sI",  desc = "图标",                 icon = "" },
        { "<leader>sj",  desc = "跳转列表",             icon = "" },
        { "<leader>sl",  desc = "位置列表",             icon = "" },
        { "<leader>sm",  desc = "标记",                 icon = "" },
        { "<leader>sM",  desc = "手册页",               icon = "" },
        { "<leader>sq",  desc = "快速修复列表",         icon = "" },
        { "<leader>su",  desc = "撤销历史",             icon = "" },
        { "<leader>si",  desc = "显示图片",             icon = "" },

        -- 切换选项
        { "<leader>t",   group = "切换",                icon = "" },
        { "<leader>tt",  desc = "切换终端",             icon = "" },
        { "<leader>ta",  desc = "切换动画",             icon = "" },
        { "<leader>tb",  desc = "切换深色背景",         icon = "" },
        { "<leader>tc",  desc = "切换隐藏级别",         icon = "" },
        { "<leader>td",  desc = "切换诊断",             icon = "" },
        { "<leader>tD",  desc = "切换暗淡模式",         icon = "" },
        { "<leader>tg",  desc = "切换缩进指示",         icon = "" },
        { "<leader>th",  desc = "切换内联提示",         icon = "" },
        { "<leader>tl",  desc = "切换行号",             icon = "" },
        { "<leader>tL",  desc = "切换相对行号",         icon = "" },
        { "<leader>tp",  group = "性能分析",            icon = "" },
        { "<leader>tpp", desc = "切换分析器",           icon = "" },
        { "<leader>tph", desc = "切换分析高亮",         icon = "" },
        { "<leader>ts",  desc = "切换拼写检查",         icon = "" },
        { "<leader>tS",  desc = "切换滚动动画",         icon = "" },
        { "<leader>tT",  desc = "切换 Treesitter",      icon = "" },
        { "<leader>tw",  desc = "切换自动换行",         icon = "" },

        -- ESP32 开发 (注意是大写 R)
        { "<leader>R",   group = "ESP32",               icon = "" },
        { "<leader>RC",  desc = "清理构建",             icon = "" },
        { "<leader>RF",  desc = "选择端口并烧录",       icon = "" },
        { "<leader>RM",  desc = "选择端口并监控",       icon = "" },
        { "<leader>Rc",  desc = "菜单配置",             icon = "" },
        { "<leader>Rf",  desc = "烧录（上次端口）",     icon = "" },
        { "<leader>Ri",  desc = "项目信息",             icon = "" },
        { "<leader>Rm",  desc = "监控（上次端口）",     icon = "" },
        { "<leader>Rr",  desc = "重新配置项目",         icon = "" },

        -- 通知
        { "<leader>n",   desc = "通知历史",             icon = "" },
        { "<leader>un",  desc = "关闭所有通知",         icon = "" },

        -- Zen 模式
        { "<leader>z",   desc = "禅模式",               icon = "󰰶" },
        { "<leader>Z",   desc = "缩放窗口",             icon = "" },

        -- Lazy
        { "<leader>L",   desc = "Lazy 插件管理",        icon = "󰒲" },

        -- 窗口管理
        { "<leader>|",   desc = "垂直分屏",             icon = "" },
        { "<leader>-",   desc = "水平分屏",             icon = "" },
        { "<leader>wo",  desc = "只保留当前窗口",       icon = "" },
      },
      -- 只展开有子项的分组
      expand = function(node)
        return not node.desc
      end,
    },
    keys = {
      -- stylua: ignore
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "缓冲区本地键映射", },
    },
  },
}
