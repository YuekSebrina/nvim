return {

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = false },
      image = {
        enabled = true,
        doc = { inline = false, float = false, max_width = 80, max_height = 40 },
        math = { latex = { font_size = "small" } },
      },
      indent = {
        enabled = true,
        animate = {
          enabled = false,
        },
        indent = {
          only_scope = true,
        },
        scope = {
          enabled = true, -- enable highlighting the current scope
          underline = true, -- underline the start of the scope
        },
        chunk = {
          -- when enabled, scopes will be rendered as chunks, except for the top-level scope which will be rendered as a scope.
          enabled = true,
        },
      },
      input = { enabled = true },
      lazygit = {
        enabled = true,
        configure = false,
      },
      notifier = {
        enabled = true,
        style = "notification",
      },
      picker = {
        enabled = true,
        previewers = {
          diff = {
            builtin = false, -- use Neovim for previewing diffs (true) or use an external tool (false)
            cmd = { "delta" }, -- example to show a diff with delta
          },
          git = {
            builtin = false, -- use Neovim for previewing git output (true) or use git (false)
            args = {}, -- additional arguments passed to the git command. Useful to set pager options using `-c ...`
          },
        },
        sources = {
          spelling = {
            layout = { preset = "select" },
          },
        },
        win = {
          input = {
            keys = {
              ["<Tab>"] = { "select_and_prev", mode = { "i", "n" } },
              ["<S-Tab>"] = { "select_and_next", mode = { "i", "n" } },
              ["<A-Up>"] = { "history_back", mode = { "n", "i" } },
              ["<A-Down>"] = { "history_forward", mode = { "n", "i" } },
              ["<A-j>"] = { "list_down", mode = { "n", "i" } },
              ["<A-k>"] = { "list_up", mode = { "n", "i" } },
              ["<C-u>"] = { "preview_scroll_up", mode = { "n", "i" } },
              ["<C-d>"] = { "preview_scroll_down", mode = { "n", "i" } },
              ["<A-u>"] = { "list_scroll_up", mode = { "n", "i" } },
              ["<A-d>"] = { "list_scroll_down", mode = { "n", "i" } },
              ["<c-j>"] = {},
              ["<c-k>"] = {},
            },
          },
        },
        layout = {
          preset = "telescope",
        },
      },
      quickfile = { enabled = true },
      scroll = { enabled = false },
      -- Create keymappings of `ii` and `ai` for textobjects, and `[i` and `]i` for jumps
      scope = {
        enabled = true,
        cursor = false,
      },

      statuscolumn = {
        enabled = true,
        left = { "mark", "sign" }, -- priority of signs on the left (high to low)
        right = { "fold", "git" }, -- priority of signs on the right (high to low)
        folds = {
          open = true, -- show open fold icons
          git_hl = false, -- use Git Signs hl for fold icons
        },
        refresh = 50, -- refresh at most every 50ms
      },

      terminal = {
        enabled = true,
      },
      words = { enabled = true },
      styles = {
        terminal = {
          relative = "editor",
          border = "rounded",
          position = "float",
          backdrop = 60,
          height = 0.9,
          width = 0.9,
          zindex = 50,
        },
        ["terminal.bottom"] = {
          relative = "editor",
          border = "rounded",
          position = "bottom",
          height = 0.4,
        },
      },
    },

    -- stylua: ignore
    keys = {
      { "<A-w>", function() require("snacks").bufdelete() end, desc = "[Snacks] 删除缓冲区" },
      { "<leader>si", function() require("snacks").image.hover() end, desc = "[Snacks] 显示图片" },
      { "<A-i>", function() require("snacks").terminal(nil, { count = 1, win = { position = "float", width = 0.9, height = 0.9, backdrop = 60 } }) end, desc = "[Snacks] 切换悬浮终端", mode = {"n",  "t"} },
      { "<leader>tt", function() require("snacks").terminal(nil, { count = 2, win = { position = "bottom", height = 0.4 } }) end, desc = "[Snacks] 切换分割终端" },
      -- Notification
      { "<leader>sn", function() require("snacks").picker.notifications() end, desc = "[Snacks] 通知历史" },
      { "<leader>n", function() require("snacks").notifier.show_history() end, desc = "[Snacks] 通知历史" },
      { "<leader>un", function() require("snacks").notifier.hide() end, desc = "[Snacks] 关闭所有通知" },
      -- Top Pickers & Explorer
      { "<leader><space>", function() require("snacks").picker.smart() end, desc = "[Snacks] 智能查找文件" },
      { "<leader>,", function() require("snacks").picker.buffers() end, desc = "[Snacks] 缓冲区" },
      { "<leader>sn", function() require("snacks").picker.notifications() end, desc = "[Snacks] 通知历史" },
      -- find
      { "<leader>sb", function() require("snacks").picker.buffers() end, desc = "[Snacks] 缓冲区" },
      { "<leader>sf", function() require("snacks").picker.files() end, desc = "[Snacks] 查找文件" },
      { "<leader>sp", function() require("snacks").picker.projects() end, desc = "[Snacks] 项目" },
      { "<leader>sr", function() require("snacks").picker.recent() end, desc = "[Snacks] 最近文件" },
      -- git
      { "<C-g>", function() require("snacks").lazygit() end, desc = "[Snacks] Lazygit" },
      { "<leader>ggl", function() require("snacks").picker.git_log() end, desc = "[Snacks] Git 日志" },
      { "<leader>ggd", function() require("snacks").picker.git_diff() end, desc = "[Snacks] Git 差异" },
      { "<leader>ggb", function() require("snacks").git.blame_line() end, desc = "[Snacks] Git 责任归属" },
      { "<leader>ggB", function() require("snacks").gitbrowse() end, desc = "[Snacks] Git 浏览" },
      -- Grep
      -- { "<leader>sb", function() require("snacks").picker.lines() end, desc = "[Snacks] 缓冲区行" },
      -- { "<leader>sB", function() require("snacks").picker.grep_buffers() end, desc = "[Snacks] 搜索打开的缓冲区" },
      { "<leader>sg", function() require("snacks").picker.grep() end, desc = "[Snacks] 全局搜索" },
      -- { "<leader>sw", function() require("snacks").picker.grep_word() end, desc = "[Snacks] 搜索选中或单词", mode = { "n", "x" } },
      -- search
      { '<leader>s"', function() require("snacks").picker.registers() end, desc = "[Snacks] 寄存器" },
      { '<leader>s/', function() require("snacks").picker.search_history() end, desc = "[Snacks] 搜索历史" },
      { "<leader>sa", function() require("snacks").picker.spelling() end, desc = "[Snacks] 拼写建议" },
      { "<leader>sA", function() require("snacks").picker.autocmds() end, desc = "[Snacks] 自动命令" },
      { "<leader>s:", function() require("snacks").picker.command_history() end, desc = "[Snacks] 命令历史" },
      { "<leader>sc", function() require("snacks").picker.commands() end, desc = "[Snacks] 命令" },
      { "<leader>sd", function() require("snacks").picker.diagnostics() end, desc = "[Snacks] 诊断" },
      { "<leader>sD", function() require("snacks").picker.diagnostics_buffer() end, desc = "[Snacks] 当前缓冲区诊断" },
      { "<leader>sH", function() require("snacks").picker.help() end, desc = "[Snacks] 帮助页面" },
      { "<leader>sh", function() require("snacks").picker.highlights() end, desc = "[Snacks] 高亮组" },
      { "<leader>sI", function() require("snacks").picker.icons() end, desc = "[Snacks] 图标" },
      { "<leader>sj", function() require("snacks").picker.jumps() end, desc = "[Snacks] 跳转列表" },
      { "<leader>sk", function() require("snacks").picker.keymaps() end, desc = "[Snacks] 键映射" },
      { "<leader>sl", function() require("snacks").picker.loclist() end, desc = "[Snacks] 位置列表" },
      { "<leader>sm", function() require("snacks").picker.marks() end, desc = "[Snacks] 标记" },
      { "<leader>sM", function() require("snacks").picker.man() end, desc = "[Snacks] 手册页" },
      { "<leader>sp", function() require("snacks").picker.lazy() end, desc = "[Snacks] 插件规格" },
      { "<leader>sq", function() require("snacks").picker.qflist() end, desc = "[Snacks] 快速修复列表" },
      { "<leader>sr", function() require("snacks").picker.resume() end, desc = "[Snacks] 恢复" },
      { "<leader>su", function() require("snacks").picker.undo() end, desc = "[Snacks] 撤销历史" },
      -- LSP
      { "gd", function() require("snacks").picker.lsp_definitions() end, desc = "[Snacks] 跳转到定义" },
      { "gD", function() require("snacks").picker.lsp_declarations() end, desc = "[Snacks] 跳转到声明" },
      { "gr", function() require("snacks").picker.lsp_references() end, desc = "[Snacks] 引用" },
      { "gI", function() require("snacks").picker.lsp_implementations() end, desc = "[Snacks] 跳转到实现" },
      { "gy", function() require("snacks").picker.lsp_type_definitions() end, desc = "[Snacks] 跳转到类型定义" },
      { "<leader>ss", function() require("snacks").picker.lsp_symbols() end, desc = "[Snacks] LSP 符号" },
      { "<leader>sS", function() require("snacks").picker.lsp_workspace_symbols() end, desc = "[Snacks] LSP 工作区符号" },
      -- Words
      { "]]", function() require("snacks").words.jump(vim.v.count1) end, desc = "[Snacks] 下一个引用", mode = { "n", "t" } },
      { "[[", function() require("snacks").words.jump(-vim.v.count1) end, desc = "[Snacks] 上一个引用", mode = { "n", "t" } },
      -- Zen mode
      { "<leader>z", function() require("snacks").zen() end, desc = "[Snacks] 切换禅模式" },
      { "<leader>Z", function() require("snacks").zen.zoom() end, desc = "[Snacks] 切换缩放" },
    },

    init = function()
      local Snacks = require("snacks")
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end
          vim.print = _G.dd -- Override print to use snacks for `:=` command

          Snacks.toggle
            .new({
              id = "Animation",
              name = "动画",
              get = function()
                return Snacks.animate.enabled()
              end,
              set = function(state)
                vim.g.snacks_animate = state
              end,
            })
            :map("<leader>ta")

          Snacks.toggle
            .new({
              id = "scroll_anima",
              name = "滚动动画",
              get = function()
                return Snacks.scroll.enabled
              end,
              set = function(state)
                if state then
                  Snacks.scroll.enable()
                else
                  Snacks.scroll.disable()
                end
              end,
            })
            :map("<leader>tS")

          -- Create some toggle mappings
          Snacks.toggle.dim():map("<leader>tD")

          Snacks.toggle.option("spell", { name = "拼写检查" }):map("<leader>ts")
          Snacks.toggle.option("wrap", { name = "自动换行" }):map("<leader>tw")
          Snacks.toggle.option("relativenumber", { name = "相对行号" }):map("<leader>tL")
          Snacks.toggle.diagnostics():map("<leader>td")
          Snacks.toggle.line_number():map("<leader>tl")
          Snacks.toggle
            .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
            :map("<leader>tc")
          Snacks.toggle.treesitter():map("<leader>tT")
          Snacks.toggle.option("background", { off = "light", on = "dark", name = "深色背景" }):map("<leader>tb")
          Snacks.toggle.inlay_hints():map("<leader>th")
          Snacks.toggle.indent():map("<leader>tg")
          Snacks.toggle.dim():map("<leader>tD")
          -- Toggle the profiler
          Snacks.toggle.profiler():map("<leader>tpp")
          -- Toggle the profiler highlights
          Snacks.toggle.profiler_highlights():map("<leader>tph")

          vim.keymap.del("n", "grn")
          vim.keymap.del("n", "gra")
          vim.keymap.del("n", "grr")
          vim.keymap.del("n", "gri")

          vim.api.nvim_set_hl(0, "SnacksPickerListCursorLine", { bg = "#313244" })
        end,
      })
    end,
  },
}
