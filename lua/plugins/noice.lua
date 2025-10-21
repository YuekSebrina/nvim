return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        -- LSP 配置
        lsp = {
          -- 覆盖 markdown 渲染,使其看起来更好
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
          -- 悬停文档
          hover = {
            enabled = true,
            silent = false,
          },
          -- 函数签名
          signature = {
            enabled = true,
            auto_open = {
              enabled = true,
              trigger = true,
              luasnip = true,
              throttle = 50,
            },
          },
          -- 进度消息
          progress = {
            enabled = true,
            format = "lsp_progress",
            format_done = "lsp_progress_done",
            throttle = 1000 / 30,
          },
          -- 消息
          message = {
            enabled = true,
            view = "notify",
          },
          -- 文档
          documentation = {
            view = "hover",
            opts = {
              lang = "markdown",
              replace = true,
              render = "plain",
              format = { "{message}" },
              win_options = { concealcursor = "n", conceallevel = 3 },
            },
          },
        },

        -- 预设配置
        presets = {
          bottom_search = false,         -- 使用经典的底部 cmdline 进行搜索
          command_palette = true,        -- 命令面板
          long_message_to_split = true,  -- 长消息会发送到 split
          inc_rename = false,            -- 启用 inc-rename.nvim 的输入对话框
          lsp_doc_border = true,         -- 为文档悬停和签名帮助添加边框
        },

        -- 命令行
        cmdline = {
          enabled = true,
          view = "cmdline_popup",  -- 弹出式命令行
          opts = {},
          format = {
            cmdline = { pattern = "^:", icon = "", lang = "vim" },
            search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
            search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
            filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
            lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
            help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
            input = {},
          },
        },

        -- 消息
        messages = {
          enabled = true,
          view = "notify",
          view_error = "notify",
          view_warn = "notify",
          view_history = "messages",
          view_search = "virtualtext",
        },

        -- 弹出菜单
        popupmenu = {
          enabled = true,
          backend = "nui",  -- 'nui' 或 'cmp'
          kind_icons = {},
        },

        -- 通知
        notify = {
          enabled = true,
          view = "notify",
        },

        -- 视图
        views = {
          cmdline_popup = {
            position = {
              row = "50%",
              col = "50%",
            },
            size = {
              width = 60,
              height = "auto",
            },
            border = {
              style = "rounded",
              padding = { 0, 1 },
            },
            win_options = {
              winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
            },
          },
          popupmenu = {
            relative = "editor",
            position = {
              row = "50%",
              col = "50%",
            },
            size = {
              width = 60,
              height = 10,
            },
            border = {
              style = "rounded",
              padding = { 0, 1 },
            },
            win_options = {
              winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
            },
          },
        },

        -- 路由
        routes = {
          {
            filter = {
              event = "msg_show",
              kind = "",
              find = "written",
            },
            opts = { skip = true },
          },
          {
            filter = {
              event = "msg_show",
              kind = "",
              find = "more lines",
            },
            opts = { skip = true },
          },
          {
            filter = {
              event = "msg_show",
              kind = "",
              find = "fewer lines",
            },
            opts = { skip = true },
          },
        },
      })
    end,
  },
  -- nvim-notify (noice.nvim 的依赖)
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
        fps = 30,
        icons = {
          DEBUG = "",
          ERROR = "",
          INFO = "",
          TRACE = "✎",
          WARN = "",
        },
        level = 2,
        minimum_width = 50,
        render = "default",
        stages = "fade_in_slide_out",
        timeout = 3000,
        top_down = true,
      })
    end,
  },
}
