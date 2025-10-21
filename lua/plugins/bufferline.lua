return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          -- 样式
          mode = "buffers",  -- 显示 buffers 而不是 tabs
          style_preset = require("bufferline").style_preset.default,

          -- 主题集成
          themable = true,

          -- 数字显示
          numbers = "none",  -- 可选: "none", "ordinal", "buffer_id", "both"

          -- 关闭图标
          close_command = "bdelete! %d",
          right_mouse_command = "bdelete! %d",
          left_mouse_command = "buffer %d",
          middle_mouse_command = nil,

          -- 指示器
          indicator = {
            icon = "▎",  -- 当前 buffer 指示符
            style = "icon",  -- 可选: 'icon', 'underline', 'none'
          },

          -- 缓冲区关闭图标
          buffer_close_icon = "󰅖",
          modified_icon = "●",
          close_icon = "",
          left_trunc_marker = "",
          right_trunc_marker = "",

          -- 名称格式化
          name_formatter = function(buf)
            return buf.name
          end,

          -- 最大名称长度
          max_name_length = 18,
          max_prefix_length = 15,
          truncate_names = true,

          -- Tab 大小
          tab_size = 18,

          -- 诊断集成
          diagnostics = "nvim_lsp",
          diagnostics_update_in_insert = false,
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,

          -- 偏移量 (为 nvim-tree 留出空间)
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              separator = true,
            },
          },

          -- 颜色
          color_icons = true,

          -- 显示 buffer 图标
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          show_duplicate_prefix = true,

          -- 持久化
          persist_buffer_sort = true,

          -- 分隔符样式
          separator_style = "thin",  -- 可选: "slant", "slope", "thick", "thin"

          -- 强制删除终端
          enforce_regular_tabs = false,

          -- 总是显示 bufferline
          always_show_bufferline = true,

          -- 鼠标悬停
          hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" },
          },

          -- 排序
          sort_by = "insert_after_current",  -- 可选: 'insert_after_current', 'insert_at_end', 'id', 'extension', 'relative_directory', 'directory', 'tabs'
        },
      })
    end,
  },
}
