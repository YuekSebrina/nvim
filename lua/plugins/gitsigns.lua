return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        -- 符号配置
        signs = {
          add          = { text = "+" },  -- 新增行
          change       = { text = "~" },  -- 修改行
          delete       = { text = "_" },  -- 删除行
          topdelete    = { text = "‾" },  -- 顶部删除 (上横线)
          changedelete = { text = "~" },  -- 修改并删除
          untracked    = { text = "?" },  -- 未跟踪
        },

        -- Sign 列配置
        signcolumn = true,  -- 显示 sign 列
        numhl = false,      -- 高亮行号
        linehl = false,     -- 高亮整行
        word_diff = false,  -- 单词级别的 diff

        -- 监听文件变化
        watch_gitdir = {
          follow_files = true,
        },

        -- 附加到未跟踪的文件
        attach_to_untracked = true,

        -- 当前行 blame
        current_line_blame = false,  -- 默认关闭,可以用快捷键切换
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol",  -- 显示在行尾
          delay = 1000,
          ignore_whitespace = false,
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",

        -- 更新延迟
        update_debounce = 100,

        -- 预览配置
        preview_config = {
          border = "rounded",
          style = "minimal",
          relative = "cursor",
          row = 0,
          col = 1,
        },

        -- 按键映射
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- 导航 Git 改动
          map("n", "]c", function()
            if vim.wo.diff then
              return "]c"
            end
            vim.schedule(function()
              gs.next_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = "下一个 Git 改动" })

          map("n", "[c", function()
            if vim.wo.diff then
              return "[c"
            end
            vim.schedule(function()
              gs.prev_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = "上一个 Git 改动" })

          -- Git Hunk 操作 (使用 <leader>gh 前缀)
          map("n", "<leader>ghs", gs.stage_hunk, { desc = "暂存改动块" })
          map("n", "<leader>ghr", gs.reset_hunk, { desc = "重置改动块" })
          map("n", "<leader>ghp", gs.preview_hunk, { desc = "预览改动" })
          map("n", "<leader>ghS", gs.stage_buffer, { desc = "暂存整个文件" })
          map("n", "<leader>ghR", gs.reset_buffer, { desc = "重置整个文件" })
          map("n", "<leader>ghu", gs.undo_stage_hunk, { desc = "撤销暂存" })

          -- Git 其他操作
          map("n", "<leader>gb", function()
            gs.blame_line({ full = true })
          end, { desc = "显示行 blame" })
          map("n", "<leader>gd", gs.diffthis, { desc = "显示 diff" })
          map("n", "<leader>gD", function()
            gs.diffthis("~")
          end, { desc = "显示 diff (HEAD)" })

          -- Toggle
          map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "切换当前行 blame" })
          map("n", "<leader>td", gs.toggle_deleted, { desc = "切换显示删除行" })
        end,
      })
    end,
  },
}
