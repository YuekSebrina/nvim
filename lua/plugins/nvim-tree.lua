return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- 禁用 netrw (Vim 内置文件浏览器)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        -- 排序方式
        sort = {
          sorter = "case_sensitive",
        },

        -- 视图配置
        view = {
          width = 30,  -- 宽度
          side = "left",  -- 位置 (left/right)
        },

        -- 渲染配置
        renderer = {
          group_empty = true,  -- 折叠空文件夹
          highlight_git = true,  -- Git 高亮
          highlight_opened_files = "name",  -- 高亮打开的文件
          root_folder_label = ":~:s?$?/..?",  -- 根文件夹标签
          indent_markers = {
            enable = true,  -- 启用缩进线
          },
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              bookmark = "",
              folder = {
                -- 使用默认箭头
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
              },
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
        },

        -- 过滤配置
        filters = {
          dotfiles = false,  -- 显示隐藏文件
          custom = { "^.git$" },  -- 隐藏 .git 文件夹
        },

        -- Git 集成
        git = {
          enable = true,
          ignore = false,
        },

        -- 文件操作配置
        actions = {
          open_file = {
            quit_on_open = false,  -- 打开文件后不关闭树
            window_picker = {
              enable = true,
            },
          },
        },

        -- 更新焦点文件
        update_focused_file = {
          enable = true,
          update_root = false,
        },

        -- 诊断集成
        diagnostics = {
          enable = false,  -- 暂时禁用诊断集成
        },
      })
    end,
  },
}
